class AddRolesToUser3 < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t| 
      t.belongs_to :roles
    end
  end
end
