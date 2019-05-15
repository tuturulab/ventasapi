class Add < ActiveRecord::Migration[5.1]
  def change
    add_column :detail_products, :is_sold, :boolean
  end
end
