Rails.application.routes.draw do
  resources :addresses
  resources :companies
  resources :users
  
  root 'users#index'
end
