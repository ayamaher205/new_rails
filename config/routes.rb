Rails.application.routes.draw do

  resources :authors


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # resources :post
  get "post",                           to:"posts#get_post" ,       as:"post"
  get "posts",                          to: "posts#get_posts",      as:"posts"
  post "posts/add",                     to: "posts#add",            as: "create"             
  delete "posts/delete/:id",            to: "posts#delete" ,        as:"destroy"
  put "posts/edit/:id",                  to: "posts#update",         as:"update" 
=begin 
  get "/authors",                           to:"authors#index" ,       as:"authors"
  get "/authors/:id",                          to: "authors#show",      as:"authors"
  post "authors/new",                     to: "authors#new",            as: "new"             
  post "authors/add",                     to: "authors#create",         as: "create"             
  delete "authors/delete/:id",            to: "authors#delete" ,        as:"destroy"
  put "authors/edit/:id",                  to: "authors#update",         as:"update" 

=end

end
