Rails.application.routes.draw do
  get '/contacts', to: 'contacts#index'
  get '/contacts/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/contacts/:id', to: 'contacts#show'
end
