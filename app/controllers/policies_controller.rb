class PoliciesController < ApplicationController
  def index
    @categories = list_categories_of_photographer if list_categories_of_photographer
  end
end
