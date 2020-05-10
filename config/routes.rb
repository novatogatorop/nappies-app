Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  resources :places
  resources :types, only: [:index, :new, :create, :edit, :update, :destroy]
  get 'search', to: 'places#search', as: :search
end
