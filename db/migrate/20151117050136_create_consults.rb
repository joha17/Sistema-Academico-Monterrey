class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.string :NomConsulta
      t.text :DesConsulta
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
