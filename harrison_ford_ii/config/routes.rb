Rails.application.routes.draw do
  resources :employees
  resources :customers
	root "home#index"
	get "vehicles" => "vehicles#index"
    resources :vehicles
end
