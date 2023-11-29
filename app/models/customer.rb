class Customer < ApplicationRecord
  validates :province, presence: true
  validates :name, presence: true, uniqueness: true
  has_many :orders
  belongs_to :province
end
