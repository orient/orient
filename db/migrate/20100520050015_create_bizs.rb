class CreateBizs < ActiveRecord::Migration
  def self.up
    create_table :bizs do |t|
      t.string :area
      t.string :tradingArea
      t.string :name
      t.string :shopfront
      t.string :phone1
      t.string :address
      t.string :url
      t.string :transferTation
		t.text :description
      t.string :head
      t.string :headPhone
      t.string :headEmail
      t.string :headQQ
      t.string :headMsn

      t.timestamps
    end
  end

  def self.down
    drop_table :bizs
  end
end
