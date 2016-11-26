Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  resources :users, only: [:new, :create, :update]
  resources :photographers, only: [:new, :create, :update]
  resources :countries, only: [:new, :create]
  resources :locations, only: [:new, :create]
  resources :categories, only: [:new, :create, :update, :show]
  resources :albums, only: [:index, :new, :create, :update, :destroy, :show]
  resources :stores, only: [:index]
  resources :bookings, only: [:index]
  resources :portfolios, only: [:index]
  resources :policies, only: [:index]
  resources :orders, only: [:index, :new, :create, :show]
  resources :bookmarks, only: [:index, :create, :destroy]

  # get 'stores' => 'stores#index'
  # get 'bookings' => 'bookings#index'
  # get 'portfolios' => 'portfolios#index'
  post 'portfolio/create' => 'photographers#add_portfolio'
  post 'album/publish' => 'albums#publish'
end
