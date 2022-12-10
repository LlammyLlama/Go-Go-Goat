class Booking < ApplicationRecord
  belongs_to :goat
  belongs_to :user
  has_one :review

def approve?
  status == "approved"
end

def deny?
  status == "deny"
end
end
