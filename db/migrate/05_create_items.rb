class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nomItem
      t.text :desItem
      t.integer :canItem
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
