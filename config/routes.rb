Rails.application.routes.draw do
  resources :users, param: :_username

  # authorization
  post '/auth/login', to: 'authentication#login'

  # notes
  get '/notes', to: 'notes#index'
  post '/notes/new', to: 'notes#create'
  post '/notes/update', to: 'notes#update'

  # get '/*a', to: 'application#not_found'
end
