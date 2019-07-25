Rails.application.routes.draw do
  get 'bookings/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get "/flights",       to: "flights#index"
  root 'flights#index'
  #Add routes for ajax search

  # resources :flights do
  # member do
  # get :search
  # end
  # end

end
