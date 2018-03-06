Rails.application.routes.draw do
  resources :employees
	root "home#index"
	get "vehicles" => "vehicles#index"
    resources :vehicles
end
