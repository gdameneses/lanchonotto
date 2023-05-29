class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.integer :size
      t.integer :price
      t.string :crust
      t.string :observations

      t.timestamps
    end
  end
end
