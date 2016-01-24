class CreatePrestamoEstados < ActiveRecord::Migration
  def change
    create_table :prestamo_estados do |t|
      t.string :nomEstPres
      t.text :desEstPres

      t.timestamps null: false
    end
  end
end
