class AddCompanyIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_id, :int
    add_index  :users, :company_id
  end
end
