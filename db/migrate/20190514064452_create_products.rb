class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.column :sell_price, :decimal, precision: 10, scale: 2

      t.integer :credit_available
      t.integer :warranty_available
      t.integer :imei_available


      t.timestamps
    end
  end
end
