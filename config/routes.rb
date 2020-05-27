Rails.application.routes.draw do

  get 'bands/show'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'

  # http://localhost:3000?query="search_text"

  resources :users, only: [:new, :create, :show, :edit, :destroy]   #????????????????
  
  get '/beats', to: 'beats#index'
  get '/beats/about', to: 'beats#about'

  # get '/beats/query?'
  
  resources :festivals, only: [:index, :show]
 
  resources :bands, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
