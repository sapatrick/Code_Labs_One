Rails.application.routes.draw do
  resources :employees
  resources :customers
	root "home#index"
	get "vehicles" => "vehicles#index"
    resources :vehicles
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
