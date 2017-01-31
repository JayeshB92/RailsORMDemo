class Employee < ApplicationRecord
  self.primary_key = 'employee_id'

  belongs_to :user, foreign_key: "employee_id"
  has_many :pictures, as: :image
end
