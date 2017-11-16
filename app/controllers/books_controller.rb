class BooksController < ApplicationController
  def index
  end

  def new
    @page_title = 'Add New Book'
    @book = Book.new
    @category = Category,new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
