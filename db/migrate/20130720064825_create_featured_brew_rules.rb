class CreateFeaturedBrewRules < ActiveRecord::Migration
  def change
    create_table :featured_brew_rules do |t|
      t.float :glass
      t.float :quart
      t.float :growler
      t.string :type
      t.belongs_to :pub
      t.timestamps
    end
  end
end
