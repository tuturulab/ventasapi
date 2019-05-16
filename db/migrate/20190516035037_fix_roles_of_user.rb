class FixRolesOfUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :roles_id
  end
end
