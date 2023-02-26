class BookmarksController < ApplicationController

  def new
  @list = List.find(params[:list_id])
   @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark.list = @list
    @bookmark.movie = @movie
    if @bookmark.save!
      redirect_to list_path(@list)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
