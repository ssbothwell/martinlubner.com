class CreatePaintings < ActiveRecord::Migration
  def self.up
    create_table :paintings do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
  
  def self.down
    drop_table :paintings
  end
end
