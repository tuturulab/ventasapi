#Schema(description, original_warranty, imei, cost_price)
class DetailProduct < ApplicationRecord

  validates :cost_price, presence: true

  belongs_to :product
end
