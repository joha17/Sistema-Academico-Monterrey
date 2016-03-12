class AddColumnsPrestamo < ActiveRecord::Migration
  def change
  	add_column :prestamos, :biblioteca, :string
  	add_column :prestamos, :nomSolic, :string
  	add_column :prestamos, :seccion, :string
  	add_column :prestamos, :numInsc, :integer
  	add_column :prestamos, :signatura_id, :integer
  	add_reference :signaturas, index: true, foreign_key: true
  end
end
