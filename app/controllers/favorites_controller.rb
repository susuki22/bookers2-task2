class FavoritesController < ApplicationController

  def create
    favorite.create(user_id: current_user.id, book_id: params[:id])
    redirect_to books_path
  end

  def destroy
    favorite.find_by(book_id: params[:id], user_id: current_user.id)
    favorite.destroy
    redirect_to books_path
  end

end
