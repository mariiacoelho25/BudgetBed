
class RoomsController < ApplicationController
  def index
    @hotel = Hotel.find(params[:hotel_id]) # Find the selected hotel
    @rooms = @hotel.rooms # Get the rooms associated with the selected hotel
  end

  def new
    # Your new action code here
  end

  def create
    # Your create action code here
  end
end
