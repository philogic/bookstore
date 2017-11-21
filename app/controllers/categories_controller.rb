class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @page_title = 'Add a New Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category successfully created!'
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
