class Property < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :apartments
end
