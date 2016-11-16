class CountriesController < ApplicationController
  def new

  end

  def create
    @country = Country.new country_params
    if @country.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def country_params
    params.require(:country).permit(:name)
  end
end
