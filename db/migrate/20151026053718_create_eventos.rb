class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :LugEven
      t.datetime :FechEven
      t.text :DescEven
      t.string :NomEven
      t.string :NomUs

      t.timestamps null: false
    end
  end
end
