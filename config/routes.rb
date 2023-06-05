Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # Get
  get 'products/create'
  get 'menu', to: 'pages#menu'
  get 'pages/home'
  get 'pizzas/build', as: 'new_pizza'
  get 'pizzas/build', as: 'build_pizza'
  get 'pizzas', to: 'pizzas#index'
  get 'drinks', to: 'drinks#index'
  get 'order/address', to: 'orders#fill_address', as: 'order_address'
  get 'order', to: 'orders#show'
  get 'pizza', to: 'pizzas#edit'
  get 'checkout', to: 'orders#checkout'

  # Post
  post 'pizzas', to: 'pizzas#create'
  post 'orders', to: 'orders#create'
  post 'topping_choices', to: 'topping_choices#create'
  post 'products', to: 'products#create'
  post 'pizza/create_topping_choices', to: 'pizzas#create_topping_choices'
  post 'drinks/append_to_order', to: 'drinks#append_to_order'
  patch 'pizza', to: 'pizzas#append_to_order'
  patch 'order', to: 'orders#confirm'


  # Delete
  delete 'topping_choices/:id', to: 'topping_choices#destroy', as: 'delete_topping_choice'
  delete 'product/:id', to: 'products#destroy', as: 'delete_product'
end
