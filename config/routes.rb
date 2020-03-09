Rails.application.routes.draw do
  get 'place_facilities/new'
  get 'facilities/new'
  get 'facilities/edit'
  devise_for :users
  root to: 'places#index'
  resources :places do
    resources :place_facilities, only: [:new, :create]
  end
  resources :place_facilities, only: [:destroy]
  resources :types, only: [:new, :create, :edit, :update]
  resources :facilities, only: [:new, :create, :edit, :update]
end
