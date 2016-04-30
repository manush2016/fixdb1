class CreateConfigattribmasters < ActiveRecord::Migration
  def change
    create_table :configattribmasters do |t|
      t.references :configattrib, index: true, foreign_key: true
      t.datetime :log_time
      t.string :param1, limit: 100
      t.string :param2, limit: 100
      t.string :notified, limit: 1

      t.timestamps null: false
    end
  end
end
