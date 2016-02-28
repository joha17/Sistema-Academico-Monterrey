class CreateSignaturas < ActiveRecord::Migration
  def change
    create_table :signaturas do |t|
      t.string :nomSig

      t.timestamps null: false
    end
  end
end
