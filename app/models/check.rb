class Check < ApplicationRecord
  belongs_to :customer
  belongs_to :cashier

  validates :total_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
