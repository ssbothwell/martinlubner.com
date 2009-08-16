class AddDimensionsToPainting < ActiveRecord::Migration
  def self.up
    add_column :paintings, :width, :int
    add_column :paintings, :height, :int
  end

  def self.down
    remove_column :paintings, :height
    remove_column :paintings, :width
  end
end
