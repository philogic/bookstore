class PublishersController < ApplicationController
  def index
  end

  def new
    @page_title = 'Add New Publisher'
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

  private

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
