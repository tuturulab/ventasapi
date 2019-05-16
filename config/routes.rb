Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :product

  resources :product do
    resources :detailproduct
  end


  #account routes
  post '/auth/create', to: 'user#create'
  get  '/auth/', to: 'user#index'
  post '/auth/login', to: 'user#login'
end
