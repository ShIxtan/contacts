Rails.application.routes.draw do
  resources :users, only: [:show, :index, :create, :update, :destroy] do
    resources :contacts, only: [:index]
    resources :comments, only: [:index, :create]
  end
  resources :contacts, only: [:show, :create, :update, :destroy] do
    resources :comments, only: [:index, :create]
    patch 'favorite', on: :member
  end
  resources :contact_shares, only: [:create, :destroy] do
    resources :comments, only: [:index, :create]
    patch 'favorite', on: :member
  end
  resources :comments, only: [:destroy] do
    resources :comments, only: [:index, :create]
  end
end
