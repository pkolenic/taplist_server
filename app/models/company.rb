class Company < ActiveRecord::Base
require 'carmen'
include Carmen

  before_save { email.downcase! }
  before_validation :convert_state
  
  def convert_state
    us = Country.named('United States')
    state_obj = us.subregions.named(state.downcase)
    if !state_obj
      state_obj = us.subregions.coded(state.upcase)
    end
    if state_obj
      self.state = state_obj.code
    else 
      self.state = ''    
    end
  end
  
  # Validations
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true, length: { maximum: 2 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  VALID_ZIP_REGEX = /\A(\d){5}(-(\d){4})?\z/i
  validates :zip, presence: true, format: {with: VALID_ZIP_REGEX }
  
  # Relationships
  has_many :pubs
  has_many :fonts
  has_many :users
end
