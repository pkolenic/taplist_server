class CreatePubsAndBrews < ActiveRecord::Migration
 def change 
    create_table :pubs_brews do |t|
      t.belongs_to :pub
      t.belongs_to :brew
      t.boolean :featured
    end
  end
end
