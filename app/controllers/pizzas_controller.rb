class PizzasController < ApplicationController
  before_action :set_pizza_to_session
  def index

  end

  def build
    @pizza
  end

  def create
    raise
  end

  def append_to_order
    @pizza.size = params[:pizza][:size].to_i
    @pizza.crust = params[:pizza][:crust]
    if @pizza.size / @pizza.toppings.count >= 4
      @pizza.save
      @product = Product.new
      @product.item = @pizza
      @product.price = set_pizza_price
      @order.products << @product

      session.delete(:pizza_id)
      redirect_to '/pizzas/build'
    else
      @pizza.errors.add(:size, :too_small, message: "Você só pode ter 1 sabor a cada 4 pedaços!")
      render(:build, status: :unprocessable_entity)
    end
  end


  def create_topping_choices
    @topping_choice = ToppingChoice.new
    @topping = Topping.find(params[:topping_choice][:topping_id])
    @topping_choice.topping = @topping
    @topping_choice.pizza = @pizza
    @topping_choice.save
    @pizza.save
    redirect_to build_pizza_path
  end

  private

  def set_pizza_to_session
    pizza_id = session[:pizza_id]
    @pizza = Pizza.find_or_create_by(id: pizza_id)
    session[:pizza_id] = @pizza.id
    @pizza
  end

  def set_pizza_price
    prices = []
    pieces = @pizza.size / @pizza.toppings.count
    @pizza.toppings.each do |t|
      prices << t.price * pieces
    end
    prices << set_crust_price
    prices.sum
  end

  def set_crust_price
    crust_price = 10
    if @pizza.crust == "simples"
      crust_price += 0
    elsif @pizza.crust == "catupiry"
      crust_price += 40
    elsif @pizza.crust == "cheddar"
      crust_price += 40
    end
    @pizza.size * crust_price
  end
end
