class Order < ApplicationRecord
  has_many :drinks, through: :products
  has_many :pizzas
end
