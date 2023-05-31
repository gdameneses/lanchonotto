class Product < ApplicationRecord
  belongs_to :item, polymorphic: true
end
