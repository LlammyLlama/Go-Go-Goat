class Goat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :user
end
