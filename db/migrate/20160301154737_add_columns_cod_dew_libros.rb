class AddColumnsCodDewLibros < ActiveRecord::Migration
  def change
    add_column :libros, :CodDewLib, :text
  end
end
