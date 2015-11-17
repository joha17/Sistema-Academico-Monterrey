class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :NomLib
      t.datetime :fecLib
      t.string :AutLib
      t.string :TitLib
      t.string :EdiLib
      t.string :LugLib
      t.integer :id_edi
      t.integer :anioLib
      t.string :ObsLib
      t.string :Deslib
      t.integer :CantLib
      t.string :DisLib
      t.string :CodDewLib

      t.timestamps null: false
    end
  end
end
