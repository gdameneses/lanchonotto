class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    @product = Product.new
  end
end
