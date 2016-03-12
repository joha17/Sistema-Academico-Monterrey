class AddColumnFecEventToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :FecEvent, :datetime
  end
end
