Rails.application.routes.draw do
  # get '/', to: 'site#home'

  devise_for :users
  root 'users#show'

  resources :users do
    resources :products
  end

  get '/users/:id/products_all', to: 'users#all_products'

  get '/users/:user_id/products/:product_id/bids/new', to: 'bids#new', as: 'user_product_bid'
  post '/users/:user_id/products/:product_id/bids/create', to: 'bids#create', as: 'user_bids'
end
