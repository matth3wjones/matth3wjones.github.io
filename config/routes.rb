Rails.application.routes.draw do
  get 'home/index'

  match '/login', to: 'users#login', via: 'get'
  match '/resume', to: 'home#resume', via: 'get'

  resources :posts do
    resources :comments
  end
  resources :users

  root 'home#index'
end
