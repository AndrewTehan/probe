class Customer < ApplicationRecord
  has_many :checks, dependent: :destroy
end
