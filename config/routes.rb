Rails.application.routes.draw do
  resources :settlement_inputs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'home#index'
  
end
