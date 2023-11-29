class Order < ApplicationRecord
  validates :customer, presence: true
  validates :total, :state, presence: true
  has_many :orderdetails
  has_many :products, through: :orderdetails
  belongs_to :customer
end
