class OrderDetail < ApplicationRecord
  validates :order, :product, presence: true
  validates :price, :quantity, presence: true
  belongs_to :order
  belongs_to :product
end
