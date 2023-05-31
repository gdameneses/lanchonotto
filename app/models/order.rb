class Order < ApplicationRecord
  has_many :drinks
  has_many :pizzas
end
