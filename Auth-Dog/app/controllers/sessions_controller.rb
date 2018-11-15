class SessionsController < ApplicationController
 def home

 end

def new

end

def create
    dog = Dog.find_by(email: params[:session][:email])
    if dog && dog.authenticate(params[:session][:password])
      log_in(dog)
      redirect_to '/index'
    else
     redirect_to '/'
    end
  end

  def destroy
    log_out
    redirect_to '/'
end
end
