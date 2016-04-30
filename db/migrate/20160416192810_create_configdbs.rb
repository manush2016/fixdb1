class CreateConfigdbs < ActiveRecord::Migration
  def change
    create_table :configdbs do |t|
      t.string :location, limit: 100
      t.string :username, limit: 20
      t.string :password, limit: 30
      t.string :monitor, limit: 1

      t.timestamps null: false
    end
    add_index :configdbs, :location, unique: true
  end
end
