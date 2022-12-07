Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/users/:id/dashboard", to: "users#show", as: :dashboard

  resources :goats do
    resources :bookings, only: %i[new create edit update]
  end

  resources :bookings, only: [:destroy]
end
