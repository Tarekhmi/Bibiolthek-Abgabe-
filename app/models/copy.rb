class Copy < ApplicationRecord
  belongs_to :book
  belongs_to :user, foreign_key: :reserved_by, optional: true
end
