class AddRoleToUsers2 < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :roles, index: true, foreign_key: true
  end
end
