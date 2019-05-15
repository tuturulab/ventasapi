class CreateDetailProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :detail_products do |t|
      t.string :description
      t.date   :original_warranty
      t.string :imei
      t.column :cost_price, :decimal, precision: 10, scale: 2
      
      t.belongs_to :products

      t.timestamps
    end
  end
end
