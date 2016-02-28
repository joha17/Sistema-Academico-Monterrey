class CreateQueryStates < ActiveRecord::Migration
  def change
    create_table :query_states do |t|
      t.string :DeState

      t.timestamps null: false
    end
  end
end
