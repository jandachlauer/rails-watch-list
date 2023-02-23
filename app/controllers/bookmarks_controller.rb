class BookmarksController < ApplicationController


  # before_action :set_list, only: %i[new create]
  # def new
  #   @bookmark = Bookmark.new
  # end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  private

  # def set_list
  #   @list = List.find(params[:list_id])
  # end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end

end
