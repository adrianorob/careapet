Rails.application.routes.draw do


  root to: 'pages#home'
  devise_for :users

  resources :users, only: [:index, :show] do
    resources :pets, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :services, only: [:new, :create]
  end

  resources :pets, only: [:index, :show, :edit, :update, :destroy]
  resources :reviews, only: [:index, :show, :edit, :update, :destroy]
  resources :user_tasks
  resources :services, only: [:index, :show, :edit, :update, :destroy] do
    member do
        put :toggle
        put :toggle_pay_authorized, as: 'authorized'
    end
  end

end



