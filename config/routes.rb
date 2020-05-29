Rails.application.routes.draw do

  root 'festivals#home'

  # http://localhost:3000?query="search_text" get '/beats/query?' ?????

  resources :users, only: [ :create]  
  resources :reviews, only: [:show, :new, :create, :edit, :delete]
  
  get 'about' => 'festivals#about'
  # get 'about' => 'beats#about'
  get 'contact_us' => 'festivals#contact_us'

  get 'festivals/like', to: 'festivals#like'
  get 'festivals/find', to: 'festivals#find'
  post 'find-festival', to: 'festivals#find_festival'
  
  resources :festivals, only: [:index, :show]

  resources :bands, only: [:show]

  # get '/sign-in', to: 'users#sign_in'
  # get '/login' => 'users#new'
  # post '/login' => 'users#create'
  # post '/logout' => 'users#destroy'
  # get '/beats/about', to: 'beats#about'

  get '/sign-in', to: 'users#sign_in'
  get '/sign-out', to: 'users#sign_out'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end