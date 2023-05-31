class ApplicationController < ActionController::Base
  before_action :set_order

  private

  def set_order
    order_id = session[:order_id]
    @order = Order.find_or_create_by(id: order_id)
    session[:order_id] = @order.id
  end
end
