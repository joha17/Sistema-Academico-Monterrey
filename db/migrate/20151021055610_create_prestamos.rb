class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.datetime :FecSol
      t.datetime :FecDev
      t.datetime :FecPre

      t.timestamps null: false
    end
  end
end
