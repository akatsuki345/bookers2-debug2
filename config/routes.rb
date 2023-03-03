Rails.application.routes.draw do

  get 'home/top' => 'home#top'
  get "search" => "searches#search"
  root to: "home#top"
  devise_for :users

   resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
   end

   resources :users do
    member do
      get :follows, :followers
    end
    resource :relationships, only: [:create, :destroy]
   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about'=>"home#about", as: "about"
end