class AlbumsController < ApplicationController
  # before_action :authenticate_user!

  def new

  end

  def create
    @album = current_photographer.portfolio.albums.build album_params
    # @album.portfolio = current_user.photographer.portfolio
    @album.create_time = Time.now
    if @album.save
        # params[:images]['url'].each do |u|
        params[:url].each do |u|
          # raise
          @image = @album.images.create!(:url => u)
        end
      redirect_to portfolios_path, notice: "Your album has been created."
    else
      redirect_to :back, notice: "Something went wrong."
    end
  end

  def update
    @album = Album.find(params[:id])
    if @event.update_attribute(:publish_at, nil)
      redirect_to portfolios_path
    else
      redirect_to :back
    end
  end

  def publish
    @album = Album.find(params[:id])
    @album.update_attribute(:publish_at, Time.now)
    redirect_to :back
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def destroy
    @album = Album.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def album_params
    params.require(:album).permit(:name, :description, :category_id)
  end
end
