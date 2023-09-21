
class PagesController < ApplicationController
  def home
    @max_budget = params[:max_budget] || 1000
    @hotels = Hotel.joins(:rooms).where('rooms.daily_rate <= ?', @max_budget.to_f).distinct
    @hotel = Hotel.first
    @room = @hotel.rooms.first
  end
end
