Rails.application.routes.draw do
  resources :admins
  resources :transactions
  resources :clients
  resources :dashboards
  resource :session
  resources :employees do
    resources :transactions
  end
  
  root "dashboards#index"
end
