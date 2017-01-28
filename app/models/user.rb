class User < ApplicationRecord
  self.primary_key = 'user_id'
  has_many :accounts, primary_key: 'user_id', inverse_of: :user, dependent: :destroy
end
