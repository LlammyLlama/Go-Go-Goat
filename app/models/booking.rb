class Booking < ApplicationRecord
  belongs_to :goat
  belongs_to :user
  has_many :reviews
end
