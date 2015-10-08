class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :NumCodLib
      t.datetime :fecLib
      t.string :AutLib
      t.string :TitLib
      t.string :EdLib
      t.string :LugLib
      t.integer :FK_Edi
      t.integer :anioLib
      t.string :ObsLib
      t.text :DesLib
      t.integer :CantLib
      t.integer :DisLib
      t.string :CodDewLib

      t.timestamps null: false
    end
  end
end
