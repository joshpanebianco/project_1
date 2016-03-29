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
#

Rails.application.routes.draw do

  get 'users/new'

  root to: "home#index"

  get 'users/index'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  get 'users/login'

  resources :users, :only => [:new, :create]



end
