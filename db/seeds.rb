# db/seeds.rb

# Include the Faker module at the top of your seed file
require 'faker'

# Create some hotels with descriptions
Hotel.create(name: Faker::Company.name, address: Faker::Address.full_address, description: Faker::Lorem.paragraph)
Hotel.create(name: Faker::Company.name, address: Faker::Address.full_address, description: Faker::Lorem.paragraph)
# Add more hotels as needed with descriptions

# Create some rooms for each hotel
hotel_a = Hotel.find_by(name: "Hotel A")
hotel_b = Hotel.find_by(name: "Hotel B")

Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_a)
Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_a)

Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_b)
Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_b)
# Add more rooms as needed

# ...

# Additional hotels with descriptions and rooms
