class Font < ActiveRecord::Base
  belongs_to :company
    
  #attr_accessible :custom, :details_size, :font, :list_size, :style, :text_color
end
