class ApplicationController < ActionController::Base
  before_action :set_order

  private

  def set_order
    if session[:order_id]
      @order = Order.find(session[:order_id])
    else
      @order = Order.create()
      session[:order_id] = @order.id
    end
  end
end
