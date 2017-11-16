class CategoriesController < ApplicationController
  def index
  end

  def new
    @page_title = 'Add a New Category'
    @category = Category.new
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
