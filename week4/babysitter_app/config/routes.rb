Rails.application.routes.draw do

  resources :babysitters
  root 'static#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
