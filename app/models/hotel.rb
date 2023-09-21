# app/models/hotel.rb

class Hotel < ApplicationRecord
  has_many :rooms
  validates :description, presence: true
end
