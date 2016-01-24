class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :NomCon
      t.string :DesCon
      t.date :FecCon
      t.references :user, index: true, foreign_key: true
      t.references :query_state, index: true, foreign_key: true, :default => 1

      t.timestamps null: false
    end
  end
end
