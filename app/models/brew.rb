class Brew < ActiveRecord::Base
   has_and_belongs_to_many :pubs
  
  attr_accessible :abv, :description, :glass, :growler, :image, :name, :quart, :type
end
