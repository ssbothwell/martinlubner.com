module CvcatsHelper
#  def add_task_link(form_builder)
#    link_to_function 'add an entry' do |page|
#      form_builder.fields_for :cventries, Cventry.new, :child_index => 'NEW_RECORD' do |form|
#        html = render(:partial => 'entry', :locals => { :entry_form => form })
#        page << "$('entries').append('#{escape_javascript(html)}');"
#      end
#    end
#  end
#  def remove_entry_link(form_builder)
#    if form_builder.object.new_record?
#      # If the task is a new record, we can just remove the div from the dom
#    link_to_function("remove", "$(this).up('.entry').remove();");
#    else
#      # However if it's a "real" record it has to be deleted from the database,
#      # for this reason the new fields_for, accept_nested_attributes helpers give us _delete,
#      # a virtual attribute that tells rails to delete the child record.
#    form_builder.hidden_field(:_delete) +
#    link_to_function("remove", "$(this).up('.entry').hide(); $(this).previous().value = '1'")
#    end
#  end

  def add_entry_link(name, association)
    link_to(name, "javascript:void(0)", :class => "add_entry", :"data-association" => association)
  end  
  
  def remove_entry_link(name, entry_form)
    entry_form.hidden_field(:_delete) + link_to(name, "javascript:void(0)", :class => "remove_child")
  end
  
  def new_entry_fields_template(form_builder, association, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(association).klass.new
    options[:partial] ||= association.to_s.singularize
    options[:form_builder_local] ||= :f
    
    content_tag(:div, :id => "#{association}_fields_template", :style => "display: none") do
      form_builder.fields_for(association, options[:object], :child_index => "new_#{association}") do |f|
        render(:partial => options[:partial], :locals => {options[:form_builder_local] => f})
      end
    end
  end
end
