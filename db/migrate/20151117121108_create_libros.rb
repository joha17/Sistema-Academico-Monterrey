class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :TitLib
      t.string :AutLib
      t.string :EdicLib
      t.integer :AnioLib
      t.datetime :FecLib
      t.string :LugLib
      t.text :ObsLib
      t.text :DesLib
      t.integer :CantLib
      t.integer :Disp
      t.string :CodDewLib
      t.references :editorial, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
