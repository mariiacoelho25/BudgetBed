class ReservationsController < ApplicationController
  # Action pour afficher le formulaire de création d'une réservation
# app/controllers/reservations_controller.rb
def index
  @reservations = current_user.reservations
end

def new
  @reservation = Reservation.new
end


def confirmation
  @reservation = Reservation.find(params[:id])
end

# app/controllers/reservations_controller.rb
# app/controllers/reservations_controller.rb
def create
  # Build a new reservation with the provided parameters
  @reservation = Reservation.new(reservation_params)

  if @reservation.save
    flash[:notice] = "Réservation effectuée avec succès." # Confirmation message
    # Load the associated room and redirect to its show page
    @room = @reservation.room
    redirect_to hotel_room_path(@room.hotel, @room)
  else
    # Handle validation errors here if needed
    render 'rooms/index' # Render the room details page in case of an error
  end
end



  # Action pour afficher les détails d'une réservation existante
  def show
    @reservation = Reservation.find(params[:id])
  end


  # Autres actions (update, destroy, etc.) peuvent être ajoutées ici

  private

  # Méthode pour définir les paramètres autorisés lors de la création d'une réservation
  def reservation_params
    params.require(:reservation).permit(:room_id, :start_date, :end_date, :other_attributes)
  end
end
