Rails.application.routes.draw do
  resources :sales
  resources :admins
  resources :customers
  resources :employees
	root "home#index"
	get "vehicles" => "vehicles#index"
    resources :vehicles
end
