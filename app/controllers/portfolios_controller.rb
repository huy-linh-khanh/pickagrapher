class PortfoliosController < ApplicationController
  def create
    @portfolio = Portfolio.new
    @portfolio.photographer_id = current_user.photographer.id
    if @portfolio.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end
end
