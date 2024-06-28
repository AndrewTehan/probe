class Product < ApplicationRecord
  has_many :stock_items
  has_many :stores, through: :stock_items

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
