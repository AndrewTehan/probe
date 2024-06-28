class Cashier < ApplicationRecord
  belongs_to :store
  has_many :checks, dependent: :destroy
end
