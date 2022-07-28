Rails.application.routes.draw do
  resources :bookings
  resources :cars 
  devise_for :users
  resources :users
  get 'bookings/new/:id' => 'bookings#new', :as => 'book'
  root "home#index"
end