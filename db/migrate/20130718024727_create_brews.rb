class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.string :name
      t.string :description
      t.float :abv
      t.float :glass
      t.float :quart
      t.float :growler
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
