class OrdersController < ApplicationController
  def new
    @order = Order.new
    @pizza = Pizza.new
  end
  def show

  end
end
