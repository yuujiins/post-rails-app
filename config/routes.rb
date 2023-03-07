Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :roles
  resources :users

  post '/auth/login', to: 'authentication#login'

  post '/admin/', to: 'users#create_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
