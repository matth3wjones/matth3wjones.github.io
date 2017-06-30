Rails.application.routes.draw do
  get 'home/index'

  match '/login', to: 'users#login', via: 'get'
  match '/resume', to: 'home#resume', via: 'get'

  resources :posts, except: [:delete]
  resources :users
  resources :comments

  root 'home#index'
end
