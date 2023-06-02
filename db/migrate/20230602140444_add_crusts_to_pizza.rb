class AddCrustsToPizza < ActiveRecord::Migration[7.0]
  def change
    add_column :pizzas, :crust, :string
  end
end
