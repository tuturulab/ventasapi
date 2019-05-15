#Schema(description, original_warranty, imei, cost_price)
class DetailProduct < ApplicationRecord

  
  belongs_to :products
end
