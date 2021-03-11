Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #resources :users
  #post "/posts/new", to: "Health#post"
  get "/posts" , to: "posts#index"
  post "/posts", to: "posts#create"
  get "/posts/new" , to: "posts#new",as: "new_post"
  
  #post "/posts", to: "physicals#create"
  get "/physicals", to: "physicals#new"
  
  get "/follows", to: "follows#index"
  #post "/follows", to: "#create",as: "follow_post"
  get "/users/:id", to: "users#show", as: "user"
  post "/users/:id", to: "users#create"
  get "/users/:id/new", to:"user#new"
  
  get "/graphs", to: "graphs#index"
  
  get "/calenders", to: "calenders#index"
  
  
end
