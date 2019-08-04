class DogsController < ApplicationController
  before_action :get_dog, only: %i[edit show update destroy]

  def index
    @dogs = Dog.all
    @dogies = Dog.search_by_name_or_email(params[:search])
  end

  def show; end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      flash[:notice] = "Dog has been created successfully"
      redirect_to dog_path(@dog)
    else
      render "new"
    end
  end

  def edit; end

  def update
    if @dog.update(dog_params)
      flash[:notice] = "Dog has been updated successfully"
      redirect_to dog_path(@dog)
    else
      render :edit
    end
  end

  def destroy
    if @dog.destroy
      flash[:notice] = "Successfully deleted!"
      redirect_to dogs_path
    else
      flash[:notice] = "Error deleting dog!"
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :email)
  end

  def get_dog
    @dog = Dog.find(params[:id])
  end
end
