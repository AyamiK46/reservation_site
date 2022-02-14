Rails.application.routes.draw do
  devise_for :users
    root 'top#index'

  resources :rooms
    
  resources :reservations, only: [:index, :create, :show] do
    collection do
      post :new
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
