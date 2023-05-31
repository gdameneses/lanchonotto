class Topping < ApplicationRecord
  has_many :topping_choices
  has_many :pizzas, through: :topping_choices
  validates :name, uniqueness: true
end
