class AddColumnsLibros < ActiveRecord::Migration
  def change
  	add_column :libros, :numInsc, :integer
  end
end
