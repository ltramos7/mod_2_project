Rails.application.routes.draw do

  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists 
  # only: [:index, :show, :edit]

  resources :murals

  resources :commissioners
   
  resources :mural_favorites

  resources :users
  

end
