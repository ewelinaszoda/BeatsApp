Rails.application.routes.draw do

  get 'festival/find'
  # root 'beats#home'
  root 'festivals#home'

  # http://localhost:3000?query="search_text" get '/beats/query?' ?????

  resources :users, only: [:new, :create]   #????????????????
  resources :reviews, only: [:new, :create, :show, :edit, :delete]
  resources :festivals, only: [:index, :show]

  get 'festivals/find' => 'festivals#find'
  get 'festivals/like' => 'festivals#like'


  resources :bands, only: [:show]

  # get '/sign-in', to: 'users#sign_in'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # get '/beats/about', to: 'beats#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end