class Passenger < ApplicationRecord
  has_many :booked_passengers
  has_many :bookings, through: :booked_passengers

end
