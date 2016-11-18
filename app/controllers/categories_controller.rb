class CategoriesController < ApplicationController
  helper_method :show_albums_follow_photographer_and_category

  def new

  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def show
    @category = Category.find(params[:id])
    @albums = @category.albums
    @photographers = []
    @albums.each do |album|
      if !exist_photographer?(album.portfolio.photographer, @photographers)
        @photographers << album.portfolio.photographer
      end
    end
  end

  def show_albums_follow_photographer_and_category(photographer)
    @albums = photographer.portfolio.albums.where(:category => params[:id])
    return @albums
  end

  private
  def category_params
    params.require(:category).permit(:name, :unit_name)
  end

  def exist_photographer?(photographer, photographer_list)
    photographer_list.each do |photographer_item|
      if photographer_item == photographer
        return true
      end
    end
    return false
  end
end
