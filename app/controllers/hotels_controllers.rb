class HotelsController < ApplicationController
  def show
    @hotel = Hotel.find(params[:id])
    @rooms = @hotel.rooms
  end
end
