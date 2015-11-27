class AddSignaturePrestamo < ActiveRecord::Migration
  def change
  	add_column :prestamos, :signatura_id, :integer
  end
end
