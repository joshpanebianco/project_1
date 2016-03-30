# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#      root GET    /                         users#index
#

# Rails.application.routes.draw do
  # get 'measurement/new'

#
#   get 'session/new'
#
#   resources :users
#   root to: "users#index"
#   get '/signup' => 'users#new'
#   get '/login' => 'session#new'
#   post '/login' => 'session#create'
#
#   delete '/login' => 'session#destroy'
# end

Rails.application.routes.draw do

  root :to => 'users#index'
  get '/users/dashboard' => 'users#dashboard'
  resources :users, :only => [:new, :create, :index, :update] do
    resources :measurements
  end
  get '/users/:id/edit' => 'users#edit', :as => 'edit_user'
  get '/users/:id' => 'users#show', :as => 'show_user'

  get '/signup' => 'users#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  post '/edit' => 'measurement#create'
end
