module AlbumsHelper
  def is_published?(id)
    @album = Album.find(id)
    if @album.publish_at != nil
      return true
    else
      return false
    end
  end

end
