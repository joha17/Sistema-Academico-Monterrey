class RemoveColumnUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :nombre
  	remove_column :users, :apellido
  end
end
