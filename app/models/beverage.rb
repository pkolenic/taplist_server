class Beverage < ActiveRecord::Base
  attr_accessible :abv, :description, :glass, :growler, :name, :quart, :featured, :glass_type
  
  belongs_to :pub
end
