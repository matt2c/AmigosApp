Rails.application.routes.draw do
  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  get 'session_controller/new'

  get 'session_controller/create'

  get 'session_controller/destroy'

  get "/" => "pages#home"

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/users/new' => 'users#new'



  resources :users


end
