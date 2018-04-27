Rails.application.routes.draw do


  root to: 'pages#home'
  devise_for :users

  resources :users, only: [:index, :show] do
    resources :pets, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :pets, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:index, :show, :edit, :update, :destroy]
  resources :user_tasks
  resources :services

end



