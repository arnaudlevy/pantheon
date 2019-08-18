Rails.application.routes.draw do
  devise_for :users
  get 'users/me' => 'users#me', as: :me
  post 'users/me' => 'users#update_me'
  resources :users, only: [:index, :show]
  get 'personalities/search' => 'personalities#search', as: :personalities_search
  resources :personalities, only: [:index, :show, :create]
  resources :choices, only: [:create, :update]
  root to: 'personalities#index'
end
