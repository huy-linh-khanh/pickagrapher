class PhotographersController < ApplicationController

  def new

  end

  def create
    @photographer = Photographer.new photographer_params
    @photographer.user = current_user
    if @photographer.save
       add_portfolio
    else
      redirect_to :back
    end
  end

  def add_portfolio
    @portfolio = Portfolio.new
    @portfolio.photographer = current_user.photographer
    if @portfolio.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def photographer_params
      params.require(:photographer).permit(:name, :location_id)
  end
end
