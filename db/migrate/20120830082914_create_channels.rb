class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.integer :num
      t.string :name
      t.timestamps
    end
  end
end
