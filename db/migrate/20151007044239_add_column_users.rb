class AddColumnUsers < ActiveRecord::Migration
  def change
  	add_column :users, :CedUs, :integer
  	add_column :users, :NomUs, :string
  	add_column :users, :ApUnoUs, :string
  	add_column :users, :ApDosUs, :string
  	add_column :users, :edadUs, :integer
  	add_column :users, :FK_NivUs, :integer
  	add_column :users, :dt_ingUs, :datetime
  	add_column :users, :dt_salUs, :datetime
  	add_column :users, :SecUs, :string
  	add_column :users, :TelUs, :integer
  	add_column :users, :FK_DirUs, :integer
  end
end
