class CreateConfigattribs < ActiveRecord::Migration
  def change
    create_table :configattribs do |t|
      t.references :configdb, index: true, foreign_key: true
      t.string :attribute_name, limit: 20
      t.string :monitor, limit: 1
      t.string :th_warning, limit: 10
      t.string :th_critical, limit: 10
      t.text :command
      t.string :command_operand, limit: 100
      t.string :command_operator, limit: 10
      t.string :command_file_type, limit: 10

      t.timestamps null: false
    end
  end
end
