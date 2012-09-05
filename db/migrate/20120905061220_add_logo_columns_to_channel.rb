class AddLogoColumnsToChannel < ActiveRecord::Migration
  def self.up
    add_column :channels, :logo, :string
  end
  
  def self.down
    remove_column :channels, :logo, :string
  end
  
end
