class CreateFonts < ActiveRecord::Migration
  def change
    create_table :fonts do |t|
      t.string :text_color
      t.string :font
      t.string :style
      t.boolean :custom
      t.float :list_size
      t.float :details_size
      t.belongs_to :compnay
      t.timestamps
    end
  end
end
