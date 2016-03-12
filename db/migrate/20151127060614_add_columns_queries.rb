class AddColumnsQueries < ActiveRecord::Migration
  def change
  	add_column :queries, :info_solic, :text
  	add_column :queries, :propCons, :string
  	add_column :queries, :libCons, :text
  	add_column :queries, :nomLec, :string
  	add_column :queries, :seccion, :string
  end
end
