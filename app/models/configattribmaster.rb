class Configattribmaster < ActiveRecord::Base
  belongs_to :configattrib
  belongs_to :configdb_id
end
