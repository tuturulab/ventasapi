class AlterToBooleanProduct < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :credit_available
    add_column :products, :credit_available, :boolean, default: false

    remove_column :products, :warranty_available
    add_column :products, :warranty_available, :boolean, default: false

    remove_column :products, :imei_available
    add_column :products, :imei_available, :boolean, default: false

  end
end
