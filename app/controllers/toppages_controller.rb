class ToppagesController < ApplicationController
  def index
    if logged_in?
      @book = current_user.books.build
      @pagy, @books = pagy(current_user.books.order(id: :desc))
    end
  end
end
