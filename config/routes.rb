Rails.application.routes.draw do
  get 'contacts/contact'
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

  resources :types, only: [:index, :new, :create, :edit, :update, :destroy]

  # match '/contacts', to: 'contacts#new', via: 'get'
  resources :contacts, only: [:new, :create]
end
