class AddColumnsEventos < ActiveRecord::Migration
  def change
  	add_column :eventos, :objEven, :text
  	add_column :eventos, :respEven, :text
  	add_column :eventos, :partEven, :text
  end
end
