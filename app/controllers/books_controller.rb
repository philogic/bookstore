class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :show, :destroy]
  def index
    @books = Book.all
    @categories = Category.all
  end

  def new
    @page_title = 'Add New Book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = 'Book Successfully Created!'
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:notice] = 'Book Successfully Updated'
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  def destroy
    @book.destroy
    flash[:alert] = "Book Removed!"
    redirect_to books_path
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :price, :buy, :format, :excerpt, :pages, :year )
  end
end
