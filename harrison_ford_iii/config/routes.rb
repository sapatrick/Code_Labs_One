Rails.application.routes.draw do
  resources :customers
  resources :dashboards
  resources :employees

  root "dashboards#index"
end
