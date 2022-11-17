class BookmarksController < ApplicationController
  def create
    #Ajoute la liste au bookmark
    # Save le bookmark
    # Récupère la liste
    # Crée le bookmark
    # Ajoute la liste au bookmark
    # Save le bookmark
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
  end

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
