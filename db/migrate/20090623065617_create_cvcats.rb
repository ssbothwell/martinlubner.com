class CreateCvcats < ActiveRecord::Migration
  def self.up
    create_table :cvcats do |t|
      t.string :category
      t.timestamps
    end
  end
  
  def self.down
    drop_table :cvcats
  end
end
