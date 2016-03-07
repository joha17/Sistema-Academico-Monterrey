class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.date :fecSol
      t.date :fecDev
      t.references :user, index: true, foreign_key: true
      t.references :libro, index: true, foreign_key: true
      t.references :prestamo_estado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
