class CreateCrusts < ActiveRecord::Migration[7.0]
  def change
    create_table :crusts do |t|
      t.string :type
      t.integer :price

      t.timestamps
    end
  end
end
