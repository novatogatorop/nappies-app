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
  resources :types, only: [:index, :new, :create, :edit, :update, :destroy]
end
