Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'menu', to: 'pages#menu'
  get 'pages/home'
  root 'pages#home'
  get 'pizzas/new'
  get 'pizzas', to: 'pizzas#index'
  post 'pizzas', to: 'pizzas#create'
  get 'drinks', to: 'drinks#index'
  get 'order/new', to: 'orders#new'
  post 'orders', to: 'orders#create'
  get 'order', to: 'orders#show'
end
