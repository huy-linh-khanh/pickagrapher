class SessionsController < ApplicationController
  def new

  end

  def index

  end

  def create
    @auth = request.env["omniauth.auth"]
    case params[:provider]
    when "facebook"
      @provider = params[:provider]
      @uid = @auth['uid']
      @image_url = @auth['info']['image']
      @name = @auth['info']['name']
      @email = @auth['info']['email']
    when "google_oauth2"
      @provider = params[:provider]
      @uid = @auth['uid']
      @image_url = @auth['info']['image']
      @name = @auth['info']['name']
      @email = @auth['info']['email']
    end

    @authentication = Authentication.where(provider: @provider, uid: @uid).first
    unless @authentication == nil
      sign_in @authentication.user
      redirect_to root_path
    else
      @user = User.where(email: @email).first
      unless @user == nil
        @new_authentication = Authentication.new
        @new_authentication.user = @user
        @new_authentication.provider = @provider
        @new_authentication.uid = @uid
        if @new_authentication.save
          sign_in @authentication.user
          redirect_to root_path
        else
          redirect_to authentications_path
        end
      else
        redirect_to new_user_registration_path(:provider => @provider,
          :uid => @uid, :email => @email, :image_url => @image_url,
          :name => @name)
      end
    end
  end

  def failure
    redirect_to root_path, notice: "Authentication failed"
  end
end
