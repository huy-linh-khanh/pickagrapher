class ImagesController < ApplicationController
  def create
    @image = Image.new image_params
    if @image.save
      redirect_to portfolios_path
    else
      render :new
    end
  end

  private
  def image_params
    params.require(:image).permit(:album_id, :url)
  end
end
