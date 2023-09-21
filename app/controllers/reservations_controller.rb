class ReservationsController < ApplicationController
def index
  @reservations = current_user.reservations
end

def new
  @reservation = Reservation.new

end


def confirmation
  @reservation = Reservation.find(params[:id])
end

def create

  @reservation = Reservation.new(reservation_params)

  if @reservation.save
    flash[:notice] = "Réservation effectuée avec succès."
    @room = @reservation.room
    redirect_to hotel_room_path(@room.hotel, @room)
  else
    render 'rooms/index'
  end
end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:room_id, :start_date, :end_date, :other_attributes)
  end
end
