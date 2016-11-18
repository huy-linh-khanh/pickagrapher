module BookmarksHelper
  def is_bookmarked?(selected_photographer)
    @bookmarks = Bookmark.where(:user => current_user)
    @bookmarks.each do |bookmark|
      if bookmark.photographer_id == selected_photographer.to_i
        return true
      end
    end
    return false
  end
end
