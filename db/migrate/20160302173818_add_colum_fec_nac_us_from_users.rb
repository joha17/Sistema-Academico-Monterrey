class AddColumFecNacUsFromUsers < ActiveRecord::Migration
  def change
    add_column :users, :FecNacUs, :datetime
  end
end
