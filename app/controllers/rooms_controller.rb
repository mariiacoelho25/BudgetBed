class RoomsController < ApplicationController
  before_action :find_hotel_and_room, only: [:index]

  def index
    @reservation = Reservation.new
    @reservations = Reservation.where(room: @room)
  end

  def new
    @room = Room.new
  end

  private

  def find_hotel_and_room
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.find(params[:room_id])
  end
end
