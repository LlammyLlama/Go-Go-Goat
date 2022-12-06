Rails.application.routes.draw do
  # get 'review/new'
  # get 'review/create'
  get 'bookings/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get "/users/:id/dashboard", to: "users#show", as: :dashboard
  # resources :users, only: [:show]
  resources :goats do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[create]
  end
end
