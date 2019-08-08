Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about'
  devise_for :users

  resources :users, only: [:show, :edit, :update, :index]
  resources :books


end
