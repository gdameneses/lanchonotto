class AddDrinksToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :drinks, index:true
    add_reference :orders, :pizzas, index:true
  end
end
