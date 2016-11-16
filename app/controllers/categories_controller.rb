class CategoriesController < ApplicationController
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

  private
  def category_params
    params.require(:category).permit(:name, :unit_name)
  end
end
