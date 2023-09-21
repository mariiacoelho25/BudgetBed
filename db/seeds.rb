# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'


Hotel.create(name: Faker::Company.name, address: Faker::Address.full_address, description: Faker::Lorem.paragraph)
Hotel.create(name: Faker::Company.name, address: Faker::Address.full_address, description: Faker::Lorem.paragraph)

hotel_a = Hotel.find_by(name: "Hotel A")
hotel_b = Hotel.find_by(name: "Hotel B")

Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_a)
Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_a)

Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_b)
Room.create(capacity: Faker::Number.between(from: 1, to: 5), daily_rate: Faker::Number.between(from: 50, to: 300), hotel: hotel_b)
