class AddPizzaReferenceToToppingChoices < ActiveRecord::Migration[7.0]
  def change
    add_reference :topping_choices, :pizza, index: true
  end
end
