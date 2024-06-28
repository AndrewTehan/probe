class RetailChain < ApplicationRecord
  validates :name, presence: true
  validates :headquarters, presence: true
  validates :ceo, presence: true
  validates :website, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "must be a valid URL" }
  validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :contact_phone, presence: true, format: { with: /\A\+?[\d\s\-\(\)]+\z/, message: "must be a valid phone number" }
  validates :industry, presence: true
  validates :founded_date, presence: true
end
