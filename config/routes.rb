Rails.application.routes.draw do

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'

  # http://localhost:3000?query="search_text"

  resources :users, only: [:new, :create, :show, :edit, :destroy]   #????????????????
  
  get '/beats', to: 'beats#index'
  get '/beats/about', to: 'beats#about'
  
  resources :festival, only: [:index, :show]
 
  resources :band, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
