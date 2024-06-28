class Store < ApplicationRecord
  belongs_to :retail_chain
  has_many :stock_items
  has_many :products, through: :stock_items

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true, format: { with: /\A\+?[\d\s\-\(\)]+\z/, message: "must be a valid phone number" }
end
