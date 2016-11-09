Rails.application.routes.draw do
  get 'payments/new'

  get 'payments/create'

  get 'payments/index'

  get 'payments/show'

  get 'widgets/index'

  get 'widgets/show'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'users/new'

  # get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users/new' => 'users#create'
end
