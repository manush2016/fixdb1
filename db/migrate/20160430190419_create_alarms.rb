class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.references :configdb, index: true, foreign_key: true
      t.references :configattrib, index: true, foreign_key: true
      t.datetime :alarm_time
      t.string :alarm_state, limit: 20
      t.string :alarm_component, limit: 100
      t.string :alarm_value, limit: 20
      t.string :flag, limit: 1

      t.timestamps null: false
    end
  end
end
