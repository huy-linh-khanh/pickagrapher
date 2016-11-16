class LocationsController < ApplicationController
  def new

  end

  def create
    @location = Location.new location_params
    if @location.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def location_params
    params.require(:location).permit(:name, :country_id)
  end
end
