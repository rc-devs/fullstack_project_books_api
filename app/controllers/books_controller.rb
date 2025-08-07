class BooksController < ApplicationController
  before_action :set_book, only: [ :show, :update, :destroy ]
  before_action :authenticate_request, except: [:index, :show]

  def index
    books = Book.all
   render json: BookBlueprint.render(books, view: :normal), status: :ok
  end

  def show
   render json: BookBlueprint.render(@book, view: :normal), status: :ok
  end

  def create
    @book = @current_user.books.new(book_params)

    if @book.save
      render json: BookBlueprint.render(@book, view: :normal), status: :created
    else
      render json: { errors: @book.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      render json: BookBlueprint.render(@book, view: :normal), status: :ok
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @book.destroy
      render json: @book, status: :ok
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def my_books
    books = @current_user.books
    render json: BookBlueprint.render(books, view: :normal), status: :ok
  end
  
  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.permit(:title, :author, :read, :user_id, :cover_image)
  end

  
end
