class Property < ApplicationRecord
  validates :name, presence: true

  has_many :apartments
end
