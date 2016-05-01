class Alarm < ActiveRecord::Base
  belongs_to :configdb
  belongs_to :configattrib
end
