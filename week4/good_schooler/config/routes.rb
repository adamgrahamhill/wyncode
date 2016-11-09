Rails.application.routes.draw do
  get 'home/index'
get '2' => 'home#index2'
  resources :users
  root 'home#index' #=> HomeController.new.index
  get '3' => 'home#show'
  get 'codeschools/:id' => 'code_schools#show', as: :code_school
  get 'post/:word' => 'home#post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
