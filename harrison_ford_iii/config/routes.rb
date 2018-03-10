Rails.application.routes.draw do
  resources :dashboards
  resources :employees

  root "dashboards#index"
end
