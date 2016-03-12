class AddColumnsPrestamos < ActiveRecord::Migration
  def change
    add_column :prestamos, :telSolic, :string
    add_column :prestamos, :nomDocente, :string
  end
end
