class CategoriesChannels < ActiveRecord::Migration
  def self.up
    create_table :categories_channels, :id => false do |t|
      t.integer :category_id
      t.integer :channel_id
    end
  end

  def self.down
    drop_table :categories_channels
  end

end
