class DogsController < ApplicationController
  
  before_action :get_dog, only: [:edit, :show, :update, :destroy]

  def index
    if params[:search]
      @dogs = Dog.where('name LIKE ? OR email LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @dogs = Dog.all
    end
  end

  def show
    
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @dog.update(dog_params)
      redirect_to dog_path(@dog)
    else
      render :edit
    end
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :email)
  end

  def get_dog
    @dog = Dog.find(params[:id])
  end
  
end
