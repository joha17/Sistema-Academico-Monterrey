class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :NomEven
      t.text :DesEven
      t.date :FecEvent
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
