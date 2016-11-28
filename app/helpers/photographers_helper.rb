module PhotographersHelper
  def is_photographer?
    if Photographer.where(:user_id => current_user.id).first
      return true
    else
      return false
    end
  end

  def current_photographer
    if current_user && is_photographer?
      return current_user.photographer
    end
  end
end
