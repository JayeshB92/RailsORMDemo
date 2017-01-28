class Account < ApplicationRecord
  self.primary_key = 'account_id'
  belongs_to :user, primary_key: 'user_id', inverse_of: :accounts
end
