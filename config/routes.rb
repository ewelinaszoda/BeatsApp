Rails.application.routes.draw do

  get 'festival/find'
  # root 'beats#home'
  root 'festivals#home'

  # http://localhost:3000?query="search_text" get '/beats/query?' ?????

  resources :users, only: [:new, :create]   #????????????????
  resources :reviews, only: [:new, :create, :show, :edit, :delete]
  
  get 'festivals/like' => 'festivals#like'
  get 'festivals/find', to: 'festivals#find'
  post 'find-festival', to: 'festivals#find_festival'
  
  resources :festivals, only: [:index, :show]




  resources :bands, only: [:show]

  # get '/sign-in', to: 'users#sign_in'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # get '/beats/about', to: 'beats#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end