class AddDirUsers < ActiveRecord::Migration
  def change
  	add_column :users, :dirUs, :text
  end
end
