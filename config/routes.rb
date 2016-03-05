Rails.application.routes.draw do
  # get 'bookings/new'

  root 'flights#index'
  get 'flights' => 'flights#index'
  resources :bookings
end
