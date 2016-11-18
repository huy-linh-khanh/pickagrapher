class PortfoliosController < ApplicationController
  include PhotographersHelper
  include AlbumsHelper
  include BookmarksHelper
  helper_method :is_published?
  helper_method :current_photographer
  helper_method :is_bookmarked?


  def index
    if current_photographer
      @albums = Portfolio.where(:photographer_id => current_photographer).first.albums
    else
      @portfolio = Portfolio.where(:photographer => params[:photographer]).first
      @albums = Album.where(:portfolio => @portfolio, :category => params[:category])
    end

  end

  def create
    @portfolio = Portfolio.new
    @portfolio.photographer = current_user.photographer
    if @portfolio.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

end
