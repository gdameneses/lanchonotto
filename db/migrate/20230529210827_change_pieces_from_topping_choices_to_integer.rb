class ChangePiecesFromToppingChoicesToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :topping_choices, :pieces, :string
    add_column :topping_choices, :pieces, :integer
  end
end
