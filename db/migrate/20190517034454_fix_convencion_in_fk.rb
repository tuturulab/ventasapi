class FixConvencionInFk < ActiveRecord::Migration[5.1]
  def change
    remove_column :detail_products, :products_id
    remove_column :users, :roles_id

    add_reference :detail_products, :product, index: true, foreign_key: true
    add_reference :users, :role, index: true, foreign_key: true 

  end
end
