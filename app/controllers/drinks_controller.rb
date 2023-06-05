class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @product = Product.new
  end

  def append_to_order
    @product = Product.new
    @drink = Drink.find(params[:drink_id])
    @product.item = @drink
    @product.save
    @product.price = @drink.price
    @order.products << @product
    @drinks = Drink.all
    redirect_to drinks_path, notice: "#{@drink.name} foi adicionado ao pedido"
  end
end
