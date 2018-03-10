Rails.application.routes.draw do
  resources :admins
  resources :customers
  resources :employees do
  	resources :transactions
  end
	root "home#index"
    resources :vehicles
end
