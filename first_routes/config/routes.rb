Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

  get 'users', to: 'users#index', as: 'users' #create
  
  post 'users', to: 'users#create' #index

  get 'users/new', to: 'users#new', as: 'new_user'  #new

  get 'users/:id/edit', to: 'users#edit', as: 'edit_user' #edit

  get 'users/:id', to: 'users#show', as: 'user' #show
  
  patch 'users/:id', to: 'users#update' #update

  put 'users/:id', to: 'users#update'

  delete 'users/:id', to: 'users#destroy'


end

# users     GET    /users(.:format)              users#index
#           POST   /users(.:format)              users#create
# new_user  GET    /users/new(.:format)          users#new
# edit_user GET    /users/:id/edit(.:format)     users#edit
# user      GET    /users/:id(.:format)          users#show
#           PATCH  /users/:id(.:format)          users#update
#           PUT    /users/:id(.:format)          users#update
#           DELETE /users/:id(.:format)          users#destroy
