class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, through: :booked_passengers
  accepts_nested_attributes_for :passengers
end
