class Apartment < ApplicationRecord
  validates :unit_number, :baths, :beds, presence: true

  belongs_to :property

  enum status: { construction: 0, on_notice: 1 }
end
