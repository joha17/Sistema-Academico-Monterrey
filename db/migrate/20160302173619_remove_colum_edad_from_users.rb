class RemoveColumEdadFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :edadUs
  end
end
