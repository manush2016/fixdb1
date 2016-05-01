class Configdb < ActiveRecord::Base
has_many :alarms
has_many :configattribmasters
has_many :configattribdetails
has_many :configattribs
has_many :configattribincls
has_many :configattribexcls
end
