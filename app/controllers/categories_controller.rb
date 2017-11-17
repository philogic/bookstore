class CategoriesController < ApplicationController
  def index
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
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
