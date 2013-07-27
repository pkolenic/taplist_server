class Privilege < ActiveRecord::Base
    has_and_belongs_to_many :user_roles
    #attr_accessible :privilege
end
