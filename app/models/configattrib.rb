class Configattrib < ActiveRecord::Base
  has_many :alarms
  has_many :configattribdetails
  has_many :configattribmasters
  has_many :configattribincls
  has_many :configattribexcls
  belongs_to :configdb
end
