Rails.application.routes.draw do

  get 'relationships/create'
  get 'relationships/destroy'
  get 'books/create'
  get 'books/destroy'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create] do
    member do
      get :followings
      get :followers
    end
  end
  
  resources :books, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
