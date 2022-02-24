Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#profile'

  resources :users, only: [ :update ]
  # get 'profile',  to: 'pages#profile'
end
