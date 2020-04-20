Rails.application.routes.draw do
  devise_for :users
  get 'place_facilities/new'
  get 'facilities/new'
  get 'facilities/edit'
  root to: 'places#index'
  resources :places do
    resources :place_facilities, only: [:new, :create]
  end
  resources :place_facilities, only: [:destroy]
  resources :types, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :facilities, only: [:index, :new, :create, :edit, :update, :destroy]
end
