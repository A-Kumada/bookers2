Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  resources :users, only: [:index, :show, :edit, :update, :create]
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
end
