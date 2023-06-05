class ToppingChoicesController < ApplicationController
  def new
  end

  def create
  end

  def destroy
    @topping_choice = ToppingChoice.find(params[:id])
    @topping_choice.destroy
    redirect_to '/pizzas/build'
  end
end
