class AddNomEdiToLibros < ActiveRecord::Migration
  def change
  	add_column :libros, :NomEdi, :string
  end
end
