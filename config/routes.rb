Rails.application.routes.draw do
  resources :bookings
  resources :cars
  devise_for :users
    # get "users", to: "users#index"
    # get "users/:id", to: "users#show", as: "user"
    # match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  resources :users
  get 'bookings/new/:id' => 'bookings#new', :as => 'book'
  root "home#index"
end