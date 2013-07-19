class AddNameToFonts < ActiveRecord::Migration
  def change
    add_column :fonts, :name, :string
  end
end
