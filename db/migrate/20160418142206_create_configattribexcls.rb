class CreateConfigattribexcls < ActiveRecord::Migration
  def change
    create_table :configattribexcls do |t|
      t.references :configattrib, index: true, foreign_key: true
      t.string :param1, limit: 100
      t.string :excludemonitor, limit: 1

      t.timestamps null: false
    end
  end
end
