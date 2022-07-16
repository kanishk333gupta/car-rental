Rails.application.routes.draw do
  resources :bookings
  resources :cars
  devise_for :users
  resources :users
  root "home#index"
end