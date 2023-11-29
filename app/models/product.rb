class Product < ApplicationRecord
  validates :category, presence: true
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  has_many :orderdetails
  has_many :orders, through: :orderdetails
  belongs_to :category
end
