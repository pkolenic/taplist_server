class Company < ActiveRecord::Base
  has_many :pubs
  has_many :fonts
  
  attr_accessible :address, :city, :email, :name, :state, :zip
end
