class CreateConfigattribincls < ActiveRecord::Migration
  def change
    create_table :configattribincls do |t|
      t.references :configattrib, index: true, foreign_key: true
      t.string :param1, limit: 100
      t.string :th_warning, limit: 10
      t.string :th_critical, limit: 10

      t.timestamps null: false
    end
  end
end
