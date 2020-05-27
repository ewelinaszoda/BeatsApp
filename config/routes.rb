Rails.application.routes.draw do

  root 'beats#home'

  # get 'sign_in'
 
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'

  # http://localhost:3000?query="search_text" get '/beats/query?' ?????

  resources :users, only: [:new, :create, :show, :edit, :destroy]   #????????????????
  
  # get '/sign-in', to: 'users#sign_in'
  get '/beats', to: 'beats#index'
  # get '/beats/about', to: 'beats#about'
  
  resources :festivals, only: [:index, :show]
 
  resources :bands, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
