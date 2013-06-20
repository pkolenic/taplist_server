class Pub < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :zip
  
  has_many :beverages
end
