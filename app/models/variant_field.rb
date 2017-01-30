class VariantField < ApplicationRecord
  belongs_to :field
  belongs_to :property
  belongs_to :variant
end
