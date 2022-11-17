Rails.application.routes.draw do
  get 'bookmarks/create'
  get 'bookmarks/new'
  get 'bookmarks/show'
  get 'bookmarks/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists
end
