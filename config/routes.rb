Rails.application.routes.draw do
  devise_for :users

  root to: 'places#index'

  resources :places do
    collection do
      get :filter_by_changing_table
      get :filter_by_high_chair
      get :filter_by_toy
      get :filter_by_play_area
    end
  end

  get '/privacy', to: 'pages#privacy', as: 'privacy'
  get '/terms', to: 'pages#terms', as: 'terms'
  get '/cookies', to: 'pages#cookies', as: 'cookies'
  get '/about', to: 'pages#about', as: 'about'

  resources :types, only: [:index, :new, :create, :edit, :update, :destroy]

  # resources :contacts, only: [:new, :create]

  get "/contact_us", to: "contacts#new", as: 'contact_us'
  post "/contacts", to: "contacts#create"
end
