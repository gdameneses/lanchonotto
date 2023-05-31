class ChangeTypeFromCrusts < ActiveRecord::Migration[7.0]
  def change
    remove_column :crusts, :type
    add_column :crusts, :name, :string
  end
end
