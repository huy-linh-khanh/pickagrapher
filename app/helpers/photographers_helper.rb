module PhotographersHelper
  def is_photographer?
    if Photographer.where(:user_account_id => current_user.id).first
      return true
    else
      return false
    end
  end
end
