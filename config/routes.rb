Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "tools#index"
  get 'dashboard', to: 'pages#dashboard'
  get 'search', to: 'tools#search', as: :search
  resources :tools do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  resources :bookings do
    member do
      post :accept
    end
  end
  resources :bookings do
    member do
      post :decline
    end
  end
end
