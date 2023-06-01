class OrdersController < ApplicationController
  def new
    @pizza = Pizza.new
    @topping_choice = ToppingChoice.new
  end

  def show

  end

  def checkout

  end
end
