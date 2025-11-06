class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :department

  validates :first_name, :last_name, :email, :designation, presence: true
end
