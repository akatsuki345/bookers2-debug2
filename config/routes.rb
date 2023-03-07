Rails.application.routes.draw do

  get 'messages/create'
  get 'rooms/create'
  get 'rooms/index'
  get 'rooms/show'
  get 'home/top' => 'home#top'
  get "search" => "searches#search"
  root to: "home#top"


   resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
   end

   devise_for :users
   resources :users do
    member do
      get :follows, :followers
    end
    resource :relationships, only: [:create, :destroy]
   end
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/about'=>"home#about", as: "about"
end