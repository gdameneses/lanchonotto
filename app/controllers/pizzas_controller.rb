class PizzasController < ApplicationController
  before_action :set_pizza_to_session
  def index

  end

  def new
    @pizza = Pizza.new
  end

  def build
    show_pizza
    puts 'at build AQUIAQUIQAUI*/-*/-*/-*/  ' + @pizza.errors.first.message unless @pizza.errors.empty?
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
      @order.products << @product
      session.delete(:pizza_id)
      redirect_to @order, notice: 'Pizza was successfully updated.'
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
    redirect_to '/pizzas/build'
  end

  private

  def set_pizza_to_session
    pizza_id = session[:pizza_id]
    @pizza = Pizza.find_or_create_by(id: pizza_id)
    session[:pizza_id] = @pizza.id
    @pizza
  end

  def show_pizza
    puts '*'
    puts '*'
    puts '*'
    puts '*'
    puts '*'
    puts @pizza.nil? ? '@pizza is nil' : "pizza is #{@pizza.id}"
    puts '*'
    puts '*'
    puts '*'
    puts '*'
  end
end
