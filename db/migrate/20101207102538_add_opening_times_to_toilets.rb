class AddOpeningTimesToToilets < ActiveRecord::Migration
  def self.up
    change_table :toilets do |t|
      t.time :opening_time, :closing_time
    end
  end

  def self.down
    change_table :toilets do |t|
      t.remove :opening_time, :closing_time
    end
  end
end
