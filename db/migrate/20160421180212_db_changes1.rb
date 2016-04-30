class DbChanges1 < ActiveRecord::Migration
  def change
  	add_reference :configattribdetails, :configdb, index: true
  end
end
