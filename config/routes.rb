Rails.application.routes.draw do

  root 'festivals#home'

  resources :users, only: [ :show, :create]  
  resources :reviews, only: [:index, :new, :create,:show, :edit, :delete]
  
  get 'about' => 'festivals#about'
  get 'contact_us' => 'festivals#contact_us'

  get 'festivals/find', to: 'festivals#find'
  post 'find-festival', to: 'festivals#find_festival'
  
  resources :festivals, only: [:index, :show ]
  resources :bands, only: [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end