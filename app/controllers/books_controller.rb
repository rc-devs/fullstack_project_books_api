class BooksController < ApplicationController
  before_action :set_books, only: [ :show ]

  def index
    books = Book.all
    render json: books, status: :ok
  end

  def show
    render json: @book, status: :ok
  end

  private
  def set_books
    @book = Book.find(params[:id])
  end
end
