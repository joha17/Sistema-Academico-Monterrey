class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nomCategory
      t.text :desCategory

      t.timestamps null: false
    end
  end
end
