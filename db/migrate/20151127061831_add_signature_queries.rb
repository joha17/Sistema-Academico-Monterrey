class AddSignatureQueries < ActiveRecord::Migration
  def change
  	add_column :queries, :signatura_id, :integer
  end
end
