class Passenger < ApplicationRecord
  has_many :bookings, through: :booked_passengers
  # has_many :booked_passengers, through: :bookings
end
