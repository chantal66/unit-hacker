class Apartment < ApplicationRecord
  validates :unit_number, :baths, :beds, presence: true

  belongs_to :property
end
