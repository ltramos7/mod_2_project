Rails.application.routes.draw do
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists 
  # only: [:index, :show, :edit]

  resources :murals
   

  resources :users, only: [:new, :show, :index, :edit, :create, :update]
  # patch '/users/:id', to: 'users#update'

end
