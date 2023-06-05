class ProductsController < ApplicationController
  def create
    raise
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to @order
  end
end
