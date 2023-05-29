class CreateToppingChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :topping_choices do |t|
      t.references :topping, null: false, foreign_key: true
      t.string :pieces

      t.timestamps
    end
  end
end
