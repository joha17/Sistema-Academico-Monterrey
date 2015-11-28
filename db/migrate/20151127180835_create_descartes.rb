class CreateDescartes < ActiveRecord::Migration
  def change
    create_table :descartes do |t|
      t.text :obserDesc
      t.date :fechaDesc
      t.integer :cantLibSug
      t.integer :cantLibDes
      t.string :autLibSug
      t.string :titLibSug
      t.references :user, index: true, foreign_key: true
      t.references :signatura, index: true, foreign_key: true
      t.references :libro, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
