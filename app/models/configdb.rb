class Configdb < ActiveRecord::Base
has_many :configattribs
has_many :configattribincls
has_many :configattribexcls
end
