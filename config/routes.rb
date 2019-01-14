Rails.application.routes.draw do
  #USERS routes
  #Root is home/index/landing page
  root 'users#index'
  resources :users #Automatically generates all RESTful routes for provided resources
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
