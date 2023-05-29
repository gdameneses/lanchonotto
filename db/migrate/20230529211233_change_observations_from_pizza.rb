class ChangeObservationsFromPizza < ActiveRecord::Migration[7.0]
  def change
    remove_column :pizzas, :observations, :string
    add_column :pizzas, :notes, :string
  end
end
