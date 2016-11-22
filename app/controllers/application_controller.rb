class ApplicationController < ActionController::Base
  include PhotographersHelper
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Add my attributes added to the devise User class
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :image_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :image_url])
  end

end
