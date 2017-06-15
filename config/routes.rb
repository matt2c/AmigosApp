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
  post '/users/addInterest/:interestId' => 'users#add_interest'
  post '/users/addNewInterest/:interest' => 'users#add_new_interest'
  post '/users/removeInterest/:interestId' => 'users#remove_interest'

  get '/users/:id/activities' => 'users#activities', as: "user_activities"

  resources :users, :interests, :activities


end
