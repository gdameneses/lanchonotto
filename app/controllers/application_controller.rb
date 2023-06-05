class ApplicationController < ActionController::Base
  before_action :set_order, :set_order_price

  private

  def set_order
    order_id = session[:order_id]
    @order = Order.find_or_create_by(id: order_id)
    session[:order_id] = @order.id
  end

  def set_order_price
    @order.price = 0
    @order.products.each do |p|
    @order.price += p.price
    end
  end
end
