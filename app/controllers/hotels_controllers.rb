class HotelsController < ApplicationController
  before_action :find_hotel, only: [:show]

  def show
    @rooms = @hotel.rooms
  end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end
end
