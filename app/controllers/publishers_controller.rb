class PublishersController < ApplicationController
  before_action :set_publisher, only: [:edit, :update, :destroy]
  def index
    @publishers = Publisher.all
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
    if @publisher.update(publisher_params)
      flash[:notice] = "Publisher Successfully Updated!"
      redirect_to publishers_path
    else
      render 'edit'
    end
  end

  def destroy
    @publisher.destroy
    flash[:alert] = "Publisher Removed!"
    redirect_to publishers_path
  end

  private

  def set_publisher
    @publisher = Publisher.find(params[:id])
  end

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
