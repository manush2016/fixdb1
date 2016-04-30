class DbChanges < ActiveRecord::Migration
  def change
  	add_reference :configattribexcls, :configdb, index: true
  	add_reference :configattribincls, :configdb, index: true
  end
end
