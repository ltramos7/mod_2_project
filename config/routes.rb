Rails.application.routes.draw do
  resources :artists 
  # only: [:index, :show, :edit]
  resources :murals
  resources :commissioners
  resources :users, only: [:new, :show, :index, :edit, :create, :update]
end
