class Account < ApplicationRecord
  self.primary_key = 'account_id'
  belongs_to :user, inverse_of: :accounts
end
