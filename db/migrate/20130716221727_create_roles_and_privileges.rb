class CreateRolesAndPrivileges < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role

      t.timestamps
    end
 
    create_table :privileges do |t|
      t.string :privilege

      t.timestamps
    end
 
    create_table :roles_privileges do |t|
      t.belongs_to :user_role
      t.belongs_to :privilege
    end
  end
end