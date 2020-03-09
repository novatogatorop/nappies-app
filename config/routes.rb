Rails.application.routes.draw do
  get 'facilities/new'
  get 'facilities/edit'
  devise_for :users
  root to: 'places#index'
  resources :places
  resources :types, only: [:new, :create, :edit, :update]
end
