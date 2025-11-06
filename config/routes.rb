Rails.application.routes.draw do
  root "sessions#new"

  resources :sessions, only: [:new, :create, :destroy]
  resources :employees
  resources :bills do
    member do
      patch :approve
      patch :reject
    end
  end

  get "/dashboard", to: "dashboard#index"
end
