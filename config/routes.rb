Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  
  get "/currencies" => "currencies#index"
  post "/search" => "currencies#search"
  post "/calculate" => "currencies#search"
  # Defines the root path route ("/")
  # root "articles#index"
end
