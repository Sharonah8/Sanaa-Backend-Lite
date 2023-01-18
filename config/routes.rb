Rails.application.routes.draw do
  resources :art_pieces
  resources :reviews
  resources :users, only: [:index]

  # get 'sessions/new'
  post 'login', to: 'sessions#create'
  post 'signup', to: 'users#create'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
