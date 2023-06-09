class Drink < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :products, as: :item
end
