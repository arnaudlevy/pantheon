Rails.application.routes.draw do
  devise_for :users
  get 'users/me' => 'users#me', as: :me
  post 'users/me' => 'users#update_me'
  resources :users, only: [:index, :show]
  post 'personalities/search' => 'personalities#search', as: :personality_search
  resources :personalities, only: [:index, :show, :create, :destroy]
  resources :choices, only: [:create, :update, :destroy]
  root to: 'personalities#index'
end
