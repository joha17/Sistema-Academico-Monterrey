class RemoveColumnsLibros < ActiveRecord::Migration
  def change
    remove_column :libros, :FecLib
  	remove_column :libros, :CodDewLib
  end
end
