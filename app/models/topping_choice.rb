class ToppingChoice < ApplicationRecord
  belongs_to :topping
  belongs_to :pizza
end
