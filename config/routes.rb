Rails.application.routes.draw do
  root 'home#index'
  # devise_for :users
  devise_for :users, :controllers => {:registrations => "registrations"}
  # devise_scope :users do
  #   get '/users/auth/failure' => 'sessions#failure'
  # end
  # get '/auth/facebook/callback', to: 'sessions#create'
  # get '/auth/twitter/callback', to: 'sessions#create'
  get '/auth/:provider/callback' => 'sessions#create'
  # get '/auth/failure' => 'authentications#failure'


  resources :users, only: [:new, :create, :update]
  resources :photographers, only: [:new, :create, :update]
  resources :countries, only: [:new, :create]
  resources :locations, only: [:new, :create]
  resources :categories, only: [:new, :create, :update, :show]
  resources :albums, only: [:index, :new, :create, :update, :destroy, :show, :edit]
  resources :stores, only: [:index]
  resources :bookings
  resources :portfolios, only: [:index]
  resources :policies
  resources :orders
  resources :bookmarks, only: [:index, :create, :destroy]
  resources :authentications
  resources :uploads
  resources :images
  resources :studios

  # get 'stores' => 'stores#index'
  # get 'bookings' => 'bookings#index'
  # get 'portfolios' => 'portfolios#index'
  post 'portfolio/create' => 'photographers#add_portfolio'
  get 'portfolios/:id/view_album' => 'portfolios#view_album'
  post 'album/publish' => 'albums#publish'
  post 'booking/accept' => 'bookings#accept'
  post 'booking/cancel' => 'bookings#cancel'
end
