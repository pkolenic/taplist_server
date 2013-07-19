class ChangeRolesAndPrivileges < ActiveRecord::Migration
  def change
    change_table :roles_privileges do |t|
      t.rename :user_role_id, :role_id
    end
  end
end
