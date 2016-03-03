class AddColumnTelusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :TelUs, :string
  end
end
