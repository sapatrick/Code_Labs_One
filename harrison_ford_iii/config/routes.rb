Rails.application.routes.draw do
  resources :transactions
  resources :clients
  resources :dashboards
  resources :employees do
    resources :transactions
  end
  
  root "dashboards#index"
end
