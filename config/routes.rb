Rails.application.routes.draw do
  resources :company_addresses
  resources :user_companies
  resources :addresses
  resources :companies
  resources :users
  
  root 'users#index'
end
