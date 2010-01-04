$('#readyTest').corner();

$(function(){
$('#dynCorner').click(function() {
        $('#dynamic').corner();
});
$('#dynUncorner').click(function() {
        $('#dynamic').uncorner();
});

    $('div.inner').wrap('<div class="outer"></div>');
    $('p').wrap("<code></code>");

    $('div.demo, div.inner').each(function() {
        var t = $('p', this).text();
        eval(t);
    });

    // fixed/fluid tests
    $("div.box").corner("keep");
    $("#abs").corner("cc:#08e");
});

$(function() {
  $('form a.add_child').click(function() {
    var assoc   = $(this).attr('data-association');
    var content = $('#' + assoc + '_fields_template').html();
    var regexp  = new RegExp('new_' + assoc, 'g');
    var new_id  = new Date().getTime();
        
    $(this).parent().before(content.replace(regexp, new_id));    
    return false;
  });
  
  $('form a.remove_child').live('click', function() {
    var hidden_field = $(this).prev('input[type=hidden]')[0];
    if(hidden_field) {
      hidden_field.value = '1';
    }
    $(this).parents('.fields').hide();
    return false;
  });
});