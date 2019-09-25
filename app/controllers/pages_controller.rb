class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @gardens = Garden.first(6)
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user.id)
  end

end
