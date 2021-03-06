class CreateContentBlocks < ActiveRecord::Migration
  def self.up
    create_table :content_blocks do |t|
      t.string :key
      t.text :text_content

      t.timestamps
    end
  end

  def self.down
    drop_table :content_blocks
  end
end
