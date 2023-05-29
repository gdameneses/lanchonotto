class Order < ApplicationRecord
  has_many :pizzas
  has_many :drinks
end
