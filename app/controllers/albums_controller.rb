class AlbumsController < ApplicationController
  # before_action :authenticate_user!

  def new
    @album = Album.new
  end

  def create
    @album = current_photographer.portfolio.albums.build album_params
    @album.create_time = Time.now
    if @album.save
      if params[:url]
        params[:url].each do |u|
          # raise
          @image = @album.images.create!(:url => u)
        end
      end

      redirect_to portfolios_path, notice: "Your album has been created."
    else
      redirect_to :back, notice: "Something went wrong."
    end
  end

  def update
    @album = Album.find(params[:id])
    # if @event.update_attribute(:publish_at, nil)
    if @album.update album_params
      if params[:url]
        params[:url].each do |u|
          # raise
          @image = @album.images.create!(:url => u)
        end
      end
      
      redirect_to portfolios_path, notice: "Your album has been updated successfully"
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
