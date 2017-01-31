class Customer < ApplicationRecord
  self.primary_key = 'customer_id'

  belongs_to :user, foreign_key: "customer_id"
  has_many :pictures, as: :image
end
