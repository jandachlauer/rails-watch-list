Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")

root to: "lists#index"

resources :lists, only: [:create, :new, :index, :show] do
  resources :bookmarks, only: [:new, :create, :destroy]
end
resources :movies, only: [:index, :show]
end
