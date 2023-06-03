Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # Get
  get 'products/create'
  get 'menu', to: 'pages#menu'
  get 'pages/home'
  get 'pizzas/new'
  get 'pizza', to: 'pizzas#create'
  get 'pizzas', to: 'pizzas#index'
  get 'drinks', to: 'drinks#index'
  get 'order/new', to: 'orders#new'
  get 'checkout', to: 'orders#checkout'
  get 'order', to: 'orders#show'

  # Post
  post 'pizzas', to: 'pizzas#create'
  post 'orders', to: 'orders#create'
  post 'topping_choices', to: 'topping_choices#create'
  post 'products', to: 'products#create'
  post 'order/create_topping_choices', to: 'orders#create_topping_choices'
  patch 'order/confirm', to: 'orders#confirm'
end
