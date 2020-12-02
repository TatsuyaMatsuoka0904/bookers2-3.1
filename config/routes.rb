Rails.application.routes.draw do
 devise_for :users
 root "homes#top"
 get "home/about" => "homes#about", as: :about
 resources :users, only: [:index, :show, :edit, :update]
 resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
 end
 
end