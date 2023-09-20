# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path, notice: 'Vous êtes maintenant connecté.'
    else
      flash.now[:alert] = 'La combinaison email/mot de passe est invalide.'
      render 'new'
    end
  end
end
