Rails.application.routes.draw do
 resources :users, only: [:new, :show, :index, :edit, :create]
end
