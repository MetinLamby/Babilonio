class GardensController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @gardens = Garden.geocoded.where(garden_type: params[:query])
    else
      @gardens = Garden.geocoded
    end

    @markers = @gardens.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { garden: garden })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end




  def show
    @garden = Garden.find(params[:id])
    @booking = Booking.new
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    @garden.save
    redirect_to garden_path(@garden)
  end

  private

  def garden_params
    params.require(:garden).permit(:description, :title, :price, :photo, :garden_type, :address)
  end


end
