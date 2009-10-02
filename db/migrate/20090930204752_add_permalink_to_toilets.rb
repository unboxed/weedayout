class AddPermalinkToToilets < ActiveRecord::Migration
  def self.up
    add_column :toilets, :permalink, :string
    Toilet.find(:all).each(&:save)
  end

  def self.down
    remove_column :toilets, :permalink, :string    
  end
end
