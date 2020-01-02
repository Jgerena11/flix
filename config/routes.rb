Rails.application.routes.draw do
  resources :characterizations
  resources :genres
  root 'movies#index'

  get 'movies/filter/:filter'=> 'movies#index', as: :filtered_movies
  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end



  resources :users
  get 'signup' => 'users#new'

  resources :sessions, only: [:new, :create, :destroy]
  get 'signin' => 'sessions#new'
end
