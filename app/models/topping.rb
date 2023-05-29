class Topping < ApplicationRecord
  has_many :topping_choices, dependent: :destroy
  validates :name, uniqueness: true
end
