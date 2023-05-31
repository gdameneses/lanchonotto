class RemoveCrustFromPizzas < ActiveRecord::Migration[7.0]
  def change
    remove_column :pizzas, :crust
  end
end
