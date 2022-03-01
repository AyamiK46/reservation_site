Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions' }            
  get "users/show", to: "users#show"
    root 'top#index'

  resources :rooms
  get "/search", to: "rooms#search"

  resources :reservations, only: [:new, :index, :create, :show] do
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
