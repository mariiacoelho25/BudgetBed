# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    @max_budget = params[:max_budget] || 1000  # Default max budget, change as needed
    @hotels = Hotel.joins(:rooms).where('rooms.daily_rate <= ?', @max_budget.to_f).distinct
  end
end
