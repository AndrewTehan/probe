class Store < ApplicationRecord
  belongs_to :retail_chain

  validates :name, presence: true
  validates :address, presence: true
end
