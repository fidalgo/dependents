class Variant < ApplicationRecord
  belongs_to :product
  has_many :variant_fields, inverse_of: :variant
  accepts_nested_attributes_for :variant_fields, allow_destroy: true
end
