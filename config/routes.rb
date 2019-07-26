Rails.application.routes.draw do
  get 'bookings/new',    to: "bookings#new"
  post 'bookings/new',  to: "bookings#create"
  get 'bookings/:id',  to: "bookings#show", as: 'booking'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get "/flights",       to: "flights#index"
  root 'flights#index'
  # resources :bookings, only: [:new, :create, :show]
  #Add routes for ajax search

  # resources :flights do
  # member do
  # get :search
  # end
  # end

end
