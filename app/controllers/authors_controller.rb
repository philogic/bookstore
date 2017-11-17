class AuthorsController < ApplicationController
  def index
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
  end

  def show
  end

  def destroy
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
