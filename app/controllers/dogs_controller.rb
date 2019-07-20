class DogsController < ApplicationController
  def index
    if params[:search]
      @dogs = Dog.where('name LIKE ? OR email LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
      else
      @dogs = Dog.all
      end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    if @dog.save
    redirect_to action: 'index'
    else
    render 'new'
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    @dog.update(dog_params)

    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :email)
  end

  
end
