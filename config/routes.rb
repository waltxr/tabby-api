Rails.application.routes.draw do
  resources :users, param: :_username

  # authorization
  post '/auth/login', to: 'authentication#login'

  # notes
  get '/notes', to: 'notes#index'
  post '/notes', to: 'notes#create'

  # get '/*a', to: 'application#not_found'
end
