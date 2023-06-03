class ToppingChoicesController < ApplicationController
  def new
    @topping_choice = ToppingChoice.new
  end

  def create
  end
end
