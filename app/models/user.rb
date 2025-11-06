class User < ApplicationRecord
  has_secure_password

  has_one :employee
  has_many :bills, foreign_key: :submitted_by_id

  enum role: { admin: 0, employee: 1 }

  validates :email, presence: true, uniqueness: true
end
