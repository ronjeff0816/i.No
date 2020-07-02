Rails.application.routes.draw do

  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users

  root "shops#index"
  resources :users, only: [:edit, :update]
  resources :shops, only: [:index, :new, :create, :edit, :update, :show, :destroy]
  resources :favorites, only: [:index]

  resources :shops, shallow: true do
    resource :favorites, only: %i[create destroy]
    get :favorites, on: :collection
  end

end
