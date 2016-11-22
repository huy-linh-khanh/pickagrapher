class AuthenticationsController < ApplicationController
  def create
    # render text: request.env['omniauth.auth'].to_yaml
    @auth = request.env["omniauth.auth"]
    case params[:provider]
    when "facebook"
      @provider = params[:provider]
      @uid = @auth['uid']
      @image_url = @auth['info']['image']
      @name = @auth['info']['name']
      @email = @auth['info']['email']
    when "twitter"
    end

    @authentication = Authentication.find_or_create_by(provider: @auth['provider'], uid: @auth['uid'])
    if @authentication.user_id == nil
      @authentication.user_id = 1
      @authentication.provider = @provider
      @authentication.uid = @uid
      if @authentication.save!
        raise
        redirect_to new_user_registration_path(:provider => @provider, :email => @email, :image_url => @image_url, :uid => @uid, :name => @name)
      else
        raise
        redirect_to root_path
      end
    else
      current_user = @authentication.user
      flash[:notice] = "Authentication successful."
      raise
      redirect_to authentications_url
    end
    # current_user.authentications.find_or_create_by(provider: @auth['provider'], uid: @auth['uid'])
    # current_user.authentications.where(:provider => @auth['provider'], :uid => @auth['provider']).first_or_create

  end

  def index
    @authentications = current_user.authentications if current_user
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Successfully destroyed authentication."
    redirect_to authentications_url
  end
end
