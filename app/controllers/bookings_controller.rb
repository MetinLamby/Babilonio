class BookingsController < ApplicationController

  before_action :set_garden

  # def new
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new
    @booking.garden = @garden
    @booking.user = current_user
    @booking.save
    redirect_to dashboard_path
    flash[:notice] = "You're booking is completed"
  end

  private

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

end
