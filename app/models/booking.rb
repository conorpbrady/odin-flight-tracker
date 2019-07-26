class Booking < ApplicationRecord
  belongs_to :flight
  has_many :booked_passengers
  has_many :passengers, through: :booked_passengers

  accepts_nested_attributes_for :passengers

  def passengers_attributes=(attributes)
    attributes.each do |attribute|
      passenger = attribute[1]
      passengers.build(name: passenger[:name], email: passenger[:email])
    end
  end
end
