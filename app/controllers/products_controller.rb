class ProductsController < ApplicationController
  def create

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to @order
  end
end
