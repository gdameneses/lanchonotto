class OrdersController < ApplicationController
  def new
    @order = Order.new
    @pizza = Pizza.new
  end
  def show

  end

  def checkout

  end
end
