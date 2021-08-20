class BookmarksController < ApplicationController
  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # POST /lists
  def create
    @bookmark = Bookmark.new(bokmark_params)
    if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end
