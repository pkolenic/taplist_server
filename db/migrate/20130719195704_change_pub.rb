class ChangePub < ActiveRecord::Migration
  def change
    change_table :pubs do |t|
      t.string :title
      t.references :title_font
      t.string :subtitle
      t.references :subtitle_font
      t.references :subheader_font
      t.references :description_font
      t.references :taplist_font
      t.references :featured_font
      t.references :brew_name_font
      t.references :featured_brew_name_font
      t.string :header_background_color
      t.string :subheader_background_color
      t.string :tabplist_background_color
      t.string :logo
    end
  end
end
