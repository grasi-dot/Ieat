Rails.application.routes.draw do
  get 'orders/create'
  resources :orders, only: [:create]
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
