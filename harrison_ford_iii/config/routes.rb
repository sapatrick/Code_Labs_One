Rails.application.routes.draw do
  resources :clients
  resources :dashboards
  resources :employees
  root "dashboards#index"
end
