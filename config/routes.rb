Rails.application.routes.draw do
  resources :user_companies
  resources :addresses
  resources :companies
  resources :users
  
  root 'users#index'
end
