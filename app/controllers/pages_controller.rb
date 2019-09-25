class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @gardens = []
    @botanical_garden = Garden.find_by(title: "The best botanical garden in the world")
    @yard = Garden.find_by(title: "The best yard in the world")
    @tropical_garden = Garden.find_by(title: "The best tropical garden in the world")
    @back_garden = Garden.find_by(title: "The best back garden in the world")
    @flower_garden = Garden.find_by(title: "The best flower garden in the world")
    @container_garden = Garden.find_by(title: "The best container garden in the world")
    @gardens << @botanical_garden
    @gardens << @yard
    @gardens << @tropical_garden
    @gardens << @back_garden
    @gardens << @flower_garden
    @gardens << @container_garden
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user.id)
    @gardens = Garden.where(user_id: current_user.id)
  end

end
