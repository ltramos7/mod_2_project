Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists 
  # only: [:index, :show, :edit]

  resources :murals

  resources :commissioners
   

<<<<<<< HEAD
  resources :users
  
=======
  resources :users, only: [:new, :show, :index, :edit, :create, :update]
>>>>>>> 1fd513db9b88348101c25eaf454fa3d410f05a2a

end
