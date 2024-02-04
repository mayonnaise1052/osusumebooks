class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    book = Book.find(params[:like_id])
    current_user.favorite(book)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to request.referer
  end

  def destroy
    book = Book.find(params[:like_id])
    current_user.unfavorite(book)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to request.referer
  end
end