class CreateToilets < ActiveRecord::Migration
  def self.up
    create_table :toilets do |t|
      t.string :name
      t.string :address
      t.string :long
      t.string :lat
      t.string :venuetype
      t.string :howtoaccess
      t.string :changingbench
      t.string :hoist
      t.string :toiletlocation
      t.string :whocanuse

      t.timestamps
    end
  end

  def self.down
    drop_table :toilets
  end
end
