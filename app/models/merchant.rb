class Merchant < ApplicationRecord
  has_many :items, foreign_key: 'merchant_id'
end
