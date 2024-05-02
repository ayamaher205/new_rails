Rails.application.routes.draw do
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # resources :post
  get "post",                           to:"post#get_post" ,       as:"post"
  get "posts",                          to: "post#get_posts",      as:"posts"
  post "posts/add",                     to: "post#add",            as: "create"             
  delete "posts/delete/:id",            to: "post#delete" ,        as:"destroy"
  put "post/edit/:id",                  to: "post#update",         as:"update" 

end
