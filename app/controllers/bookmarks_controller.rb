class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @bookmark.photographer_id = params[:photographer]
    if @bookmark.save
      redirect_to :back
    else
      redirect_to :back
    end
  end
end
