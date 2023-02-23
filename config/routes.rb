Rails.application.routes.draw do

#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
# root to: "lists#index"

# # As a user, I can see all my movie lists
# get 'lists', to: 'lists#index'

# # As a user, I can see the details of a movie list
# get 'lists/:id', to: 'lists#show', as: :list

# # As a user, I can create a movie list
# get 'lists/new', to: 'lists#new'
# post 'lists', to: 'lists#create'

# # As a user, I can bookmark a movie inside a movie list
# get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
# post 'lists/:id/bookmarks', to: 'bookmarks#create'


# As a user, I can destroy a bookmark
#   get 'lists/:id/bookmarks/delete', to: xxxxxxx

resources :lists do
  resources :bookmarks, only: [:new, :create]
end


end
