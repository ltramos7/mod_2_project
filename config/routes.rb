Rails.application.routes.draw do

  get 'sessions/new'
  post 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'users#index'
  #resouces :sessions ?

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists 
  # only: [:index, :show, :edit]
  resources :murals
  resources :commissioners
   
  resources :mural_favorites

  resources :users


  

end
