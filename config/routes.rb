Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resource :users, only: [:new, :create, :update]
  resource :photographers, only: [:new, :create, :update]
  resource :countries, only: [:new, :create]
  resource :locations, only: [:new, :create]
  resource :categories, only: [:new, :create, :update]
  resource :portfolios, only: [:create]
  get 'stores' => 'stores#index'
  get 'bookings' => 'bookings#index'
  get 'portfolios' => 'portfolios#index'
  get 'policies' => 'policies#index'
  post 'portfolio/create' => 'photographers#add_portfolio'

  # resource :bookings, only: [:index]
  # resource :portfolios, only: [:index]
  # resource :policies, only: [:index]


  # resource :stores, only: [:index]

end
