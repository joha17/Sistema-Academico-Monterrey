class DropcolumntelusUser < ActiveRecord::Migration
  def change
    remove_column :users, :TelUs
  end
end
