Rails.application.routes.draw do
  get 'bookings/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
=======
  get "/users/:id/dashboard", to: "users#show", as: :dashboard
  # resources :users, only: [:show]
>>>>>>> c4c8813ed7e97a01675d704e7b4c78043895df34
  resources :goats do
    resources :bookings, only: %i[new create]
  end
end
