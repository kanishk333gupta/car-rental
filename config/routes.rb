Rails.application.routes.draw do
  resources :bookings
  resources :cars do
    member do 
      patch :update_status
    end
  end
  devise_for :users
  resources :users
  get 'bookings/new/:id' => 'bookings#new', :as => 'book'
  root "home#index"
end