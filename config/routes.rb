RailsBlog::Application.routes.draw do
  get "password_resets/new"

  resources :profiles

  resources :comments

  resources :posts
  
  resources :tags
  
  match 'users/login' => 'users#login'
  match 'users/logout' => 'users#logout'
  resources :users
  
  resources :password_resets
  
    
  root :to => 'application#home'
  
end
