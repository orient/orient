class AddColumnToBiz < ActiveRecord::Migration
  def self.up
    add_column :bizs, :productBigType, :string
    add_column :bizs, :productSmallType, :string
    add_column :bizs, :avgConsumer, :decimal, :precision=>8, :scale=>2, :default=>0
  end

  def self.down
    remove_column :bizs, :avgConsumer
    remove_column :bizs, :productSmallType
    remove_column :bizs, :productBigType
  end
end
