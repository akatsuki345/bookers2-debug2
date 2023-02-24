Rails.application.routes.draw do
  get '/top' => 'homes#top'
  root to: "homes#top"
  devise_for :users

   resources :books
   resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get "homes/about"=>"homes#about", as: "about"
end