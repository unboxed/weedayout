class CreateToilets < ActiveRecord::Migration
  def self.up
    create_table :toilets do |t|
      t.string :name
      t.string :address
      t.string :long
      t.string :lat
      t.string :venuetype
      t.string :howtoaccess
      t.boolean :changingbench
      t.boolean :hoist
      t.string :toiletlocation
      t.string :whocanuse
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :toilets
  end
end
