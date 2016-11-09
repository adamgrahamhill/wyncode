Rails.application.routes.draw do
  resources :positions
	resources :organizations do
		resources :departments do
			resources: positions
		end
	end

	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
