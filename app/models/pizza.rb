class Pizza < ApplicationRecord
  has_many :topping_choices
  has_many :toppings, through: :topping_choices
  has_many :crusts
  has_many :products, as: :item
end
