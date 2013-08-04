class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status, :int
    add_index  :users, :status
  end
end
