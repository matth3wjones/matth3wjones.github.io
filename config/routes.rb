Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get    '/resume',  to: 'home#resume'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :posts do
    resources :comments
  end
  resources :users

  root 'home#index'
end
