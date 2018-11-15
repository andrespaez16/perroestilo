class DogsController < ApplicationController
  def index
  @dogs = Dog.all
  end

  def new
  @dogs = Dog.new
  end

  def create
    @dogs = Dog.new(dog_params)
    if @dogs.save
     redirect_to '/index'
   else
     render 'new'
   end
  end



  private
  def dog_params
    params.require(:dog).permit(:name, :email, :password, :password_confirmation)

  end
end
