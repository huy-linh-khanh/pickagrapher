class PhotographersController < ApplicationController

  def new

  end

  def create
    @photographer = Photographer.new photogpher_params
    @photographer.user_account_id = current_user.id
    if @photographer.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def add_portfolio
    @portfolio = Portfolio.new
    @portfolio.photographer = current_user.photographer_account
    if @portfolio.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  private
  def photogpher_params
      params.require(:photographer).permit(:name, :location_id)
  end
end
