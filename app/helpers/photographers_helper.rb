module PhotographersHelper
  def is_photographer?
    if Photographer.where(:user_id => current_user.id).first
      return true
    else
      return false
    end
  end

  def current_photographer
    if current_user
      return current_user.photographer
    end
    # return @photographer if @photographer
    # @photographer = current_user.photographer
  end
end
