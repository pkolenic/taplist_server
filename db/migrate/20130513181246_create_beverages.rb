class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :name
      t.string :description
      t.float :abv
      t.float :glass
      t.float :quart
      t.float :growler
      t.boolean :featured
      t.string  :glass_type
      t.references  :pub
      t.timestamps
    end
  end
end
