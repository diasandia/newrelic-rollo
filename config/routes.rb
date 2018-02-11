Rails.application.routes.draw do
  resources :companies_addresses
  resources :employees
  resources :addresses
  resources :companies
  resources :users
  
  root 'users#index'
end
