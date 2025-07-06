class User < ApplicationRecord
  has_many :copies, foreign_key: :reserved_by
  has_secure_password

  validates :email, presence: true, uniqueness: true
end
