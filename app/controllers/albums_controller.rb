class AlbumsController < ApplicationController
  # before_action :authenticate_user!

  def create
    @album = Album.new album_params
    @album.portfolio = current_user.photographer.portfolio
    @album.create_time = Time.now
    if @album.save
      redirect_to portfolios_path
    else
      redirect_to :back
    end
  end

  def destroy
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

  private
  def album_params
    params.require(:album).permit(:name, :description, :category_id)
  end
end
