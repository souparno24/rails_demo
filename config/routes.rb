Rails.application.routes.draw do
  devise_for :accounts
  get "/dashboard", to:"accounts#index"

  get "profile/:username", to:"accounts#profile", as: :profile
  get "post/rating/:post_id", to:"ratings#save_rating", as: :rating_post
  resources :posts, only: [:new,:create,:show]
  resources :comments, only: [:create,:destroy]
  root to: "public#homepage"
 
end
