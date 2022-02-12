Rails.application.routes.draw do
  resources :categories
  resources :variatons
  resources :sizes
  resources :colors
  resources :payments
  resources :payment_methods
  resources :order_items
  resources :orders
  devise_for :users
  devise_for :admins
  resources :names
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
