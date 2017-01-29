class User < ApplicationRecord
  self.primary_key = 'user_id'

  has_many :accounts, inverse_of: :user, dependent: :destroy
  has_many :club_members, inverse_of: :user
  has_many :clubs, through: :club_members
end
