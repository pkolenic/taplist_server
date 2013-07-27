class Pub < ActiveRecord::Base
  has_one :title_font, class_name: "Font", :foreign_key => 'title_font_id'
  has_one :subtitle_font, class_name: "Font", :foreign_key => 'subtitle_font_id'
  has_one :subheader_font, class_name: "Font", :foreign_key => 'subheader_font_id'
  has_one :description_font, class_name: "Font", :foreign_key => 'description_font_id'
  has_one :taplist_font, class_name: "Font", :foreign_key => 'taplist_font_id'
  has_one :featured_font, class_name: "Font", :foreign_key => 'featured_font_id'
  has_one :brew_name_font, class_name: "Font", :foreign_key => 'brew_name_font_id'
  has_one :featured_brew_name_font, class_name: "Font", :foreign_key => 'featured_brew_name_font_id'
  has_one :featured_brew_rule
#  attr_accessible :address, :city, :name, :state, :zip, :title, :subtitle, :logo, :title_font, :subtitle_font, :subheader_font, :description_font, :taplist_font, :featured_font, :brew_name_font, :featured_brew_name_font, :header_background_color, :subheader_background_color, :taplist_background_color

end
