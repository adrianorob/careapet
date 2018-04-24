Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users

  resources :users, only: [:index, :show] do
    resources :tasks, only: [:new, :create]
    resources :pets, only: [:new, :create]
    resources :services, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :tasks, only: [:index, :show, :edit, :update, :destroy]
  resources :pets, only: [:index, :show, :edit, :update, :destroy]
  resources :services, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:index, :show, :edit, :update, :destroy]

end



