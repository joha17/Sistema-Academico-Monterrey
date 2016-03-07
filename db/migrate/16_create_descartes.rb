class CreateDescartes < ActiveRecord::Migration
  def change
    create_table :descartes do |t|
      t.text :ObsDesc
      t.integer :CantLibDesc
      t.references :user, index: true, foreign_key: true
      t.references :libro, index: true, foreign_key: true
      t.references :signatura, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
