class AuthorsController < ApplicationController
  def index
  end

  def new
    @page_title = Add New Author
    @author = Author.new
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
