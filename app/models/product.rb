#Schema(brand, model, sell_price, credit_available, warranty_available, imei_available, List-DetailProduct- )
class Product < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :sell_price, presence: true
  validates :credit_available, presence: true
  validates :warranty_available, presence: true
  validates :imei_available, presence: true

  has_many :detail_products
end



