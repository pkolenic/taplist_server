class Company < ActiveRecord::Base
  attr_accessible :address, :city, :email, :name, :state, :zip
end
