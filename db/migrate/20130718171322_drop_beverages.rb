class DropBeverages < ActiveRecord::Migration
  def change
    drop_table :beverages
  end
end
