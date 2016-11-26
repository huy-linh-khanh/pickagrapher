class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  def create
    @image = Image.new image_params
    if @image.save
      redirect_to portfolios_path
    else
      render :new
    end
  end

  def destroy
    @image.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def set_image
    @image = Image.find(params[:id])
  end
  def image_params
    params.require(:image).permit(:album_id, :url)
  end
end
