class RemovePizzaIdFromToppingChoices < ActiveRecord::Migration[7.0]
  def change
    remove_column :topping_choices, :pizza_id
  end
end
