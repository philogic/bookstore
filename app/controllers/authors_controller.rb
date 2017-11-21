class AuthorsController < ApplicationController
  before_action :set_author, only: [:edit, :update, :destroy]
  def index
    @authors = Author.all
  end

  def new
    @page_title = 'Add New Author'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = 'Author Successfully Created!'
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @author.update(author_params)
      flash[:notice] = "Author Successfully Updated"
      redirect_to authors_path
    end
  end

  def destroy
    @author.destroy
    flash[:alert] = "Author Removed!"
    redirect_to authors_path
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
