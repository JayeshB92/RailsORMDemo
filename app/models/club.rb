class Club < ApplicationRecord
  self.primary_key = "club_id"

  has_many :club_members, inverse_of: :club
  has_many :users, through: :club_members
end
