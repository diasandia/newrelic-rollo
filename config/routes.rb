Rails.application.routes.draw do
  resources :companies_addresses
  resources :employees
  resources :addresses
  resources :companies
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
