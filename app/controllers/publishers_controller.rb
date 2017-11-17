class PublishersController < ApplicationController
  def index
  end

  def new
    @page_title = 'Add New Publisher'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = 'Publisher Successfully Created!'
      redirect_to publishers_path
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

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
