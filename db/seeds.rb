# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seed Airports
airport_codes = %w[JFK SFO LAX CLT LAS MDW SAN DTW PHL DAL]

airport_codes.each do |ac|
  Airport.create(code: ac)
end

# Flights

Flight.create(start_id: 1, finish_id: 2, start_date: 1.day.from_now, duration: 300)

Flight.create(start_id: 2, finish_id: 1, start_date: 2.days.from_now, duration: 300)

Flight.create(start_id: 2, finish_id: 3, start_date: 1.day.from_now, duration: 60)

Flight.create(start_id: 3, finish_id: 2, start_date: 2.day.from_now, duration: 60)

Flight.create(start_id: 3, finish_id: 4, start_date: 1.day.from_now, duration: 360)

Flight.create(start_id: 4, finish_id: 3, start_date: 2.day.from_now, duration: 360)
