class RemoveColumnFecEventToEventos < ActiveRecord::Migration
  def change
    remove_column :eventos, :FecEvent
  end
end
