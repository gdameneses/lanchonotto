class OrdersController < ApplicationController
  def new
    set_pizza
    @pizza = $pizza
    puts "================= GOT PIZZA #{@pizza} "
    @topping_choice = ToppingChoice.new
    @product = Product.new
  end

  def show

  end

  def checkout

  end

  def update
    raise
  end

  def create_topping_choices
    $pizza
    @topping_choice = ToppingChoice.new
    @topping_choice.topping = Topping.find(params[:topping_choice][:topping_id])
    $pizza.topping_choices << @topping_choice
    @topping_choice.save
    $pizza.save
    puts "=================SENDING PIZZA #{$pizza} to set_pizza"
    redirect_to '/order/new'
  end

  def confirm
    puts 'you called orders/confirm'
    raise
  end

  private

  def set_pizza
    puts "$pizza = #{$pizza}"
    session[:p] ||= { object: Pizza.new }
    $pizza ||= Pizza.find(session[:pizza]["id"])
    puts "after ||= New $pizza = #{$pizza}"

  end
end
