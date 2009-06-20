class CreateAddTestDatas < ActiveRecord::Migration
  def self.up
    create_table :add_test_datas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :add_test_datas
  end
end
