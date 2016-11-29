class HomeController < ApplicationController
  def index
    @categories = Category.all
    @locations = Location.all
  end

  def search

  end
end
