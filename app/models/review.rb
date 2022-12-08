class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :comment, :rating, presence: true
end
