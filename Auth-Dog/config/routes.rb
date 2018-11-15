Rails.application.routes.draw do
  get '/index', to: 'dogs#index'

  get  '/singup',  to: 'dogs#new', as: 'singup'
  post '/singup',  to: 'dogss#create'
    #
  


    get '/', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
