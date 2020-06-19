Rails.application.routes.draw do

  devise_for :users

  root "shops#index"
  resources :users, only: [:edit, :update]
  resources :shops, only: [:index, :new, :create, :edit, :update]

end
