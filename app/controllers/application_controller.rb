class ApplicationController < ActionController::Base
  include PhotographersHelper
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Add my attributes added to the devise User class
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image_url, :profile_image_path, :profile_image, :profile_image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image_url, :profile_image_path, :profile_image, :profile_image_cache, :remove_profile_image])
  end

  def list_categories_of_photographer
    @current_categories = []
    if current_user && is_photographer?
      current_user.photographer.portfolio.albums.each do |album|
        @current_categories << album.category
      end
      @current_categories.uniq!
    end
  end

end
