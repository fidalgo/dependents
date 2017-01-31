class Product < ApplicationRecord
  has_many :variants, inverse_of: :product
  accepts_nested_attributes_for :variants, allow_destroy: true
end
