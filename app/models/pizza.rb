class Pizza < ApplicationRecord
  has_many :topping_choices
  has_many :toppings, through: :topping_choices
  belongs_to :order
end
