class Store < ApplicationRecord
  belongs_to :retail_chain
  has_many :stock_items
  has_many :products, through: :stock_items

  validates :address, presence: true
end
