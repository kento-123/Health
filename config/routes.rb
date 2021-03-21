Rails.application.routes.draw do
   root to: "posts#index"
  #devise_for :users
  devise_for :users, controllers: {
   registrations: 'users/registrations'
 }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users
  #post "/posts/new", to: "Health#post"
  resources :posts
  #post "/posts", to: "physicals#create"
  
  resources :relationships, only: [:create, :destroy]

  
  get "/physicals", to: "physicals#new"
  post "/physicals", to: "physicals#create"
  
  get "/follows", to: "follows#index"
  #post "/follows", to: "#create",as: "follow_post"
  
  get "/graphs", to: "graphs#index"
  
  get "/calenders", to: "calenders#index"
  
  
end
