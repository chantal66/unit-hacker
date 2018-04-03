class AddPropertyToApartment < ActiveRecord::Migration[5.1]
  def change
    add_reference :apartments, :property, foreign_key: true
  end
end
