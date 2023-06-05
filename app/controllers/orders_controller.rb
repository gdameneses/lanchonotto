class OrdersController < ApplicationController
  def new
    @product = Product.new
  end

  def show

  end

  def checkout

  end

  def update
    raise
  end



  def confirm
    puts 'you called orders/confirm'
    raise
  end

end
