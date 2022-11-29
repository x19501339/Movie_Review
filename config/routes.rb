Rails.application.routes.draw do
  resources :posts
  get 'search', to: 'search#index'
  devise_for :users
  resources :movies do
    resources :reviews, :posts, except: [:show]
  end
  root 'movies#index'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
