Rails.application.routes.draw do
  root "books#index"
  resources :authors, only: [:index]
  resources :books, only: [:index]
  resources :copies, only: [:index]
  resources :users, only: [:index]
  resource :sessions, only: [:new, :create, :destroy]
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
end
