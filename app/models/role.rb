class Role < ActiveRecord::Base
    has_and_belongs_to_many :privileges
  
#    attr_accessible :role
end
