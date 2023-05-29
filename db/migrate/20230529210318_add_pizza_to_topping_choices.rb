class AddPizzaToToppingChoices < ActiveRecord::Migration[7.0]
  def change
    add_column :topping_choices, :pizza_id, :integer, foreign_key: true
  end
end
