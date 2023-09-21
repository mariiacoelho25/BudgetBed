class PagesController < ApplicationController
  def home
    @hotels = Hotel.joins(:rooms).where('rooms.daily_rate <= ?', @max_budget.to_f).distinct

    if @hotels.empty?
      flash[:alert] = 'No hotels matching the criteria were found.'
      redirect_to root_path
    end
  end
end
