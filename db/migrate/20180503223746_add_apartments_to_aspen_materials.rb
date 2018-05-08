class AddApartmentsToAspenMaterials < ActiveRecord::Migration[5.1]
  def change
    add_reference :aspen_materials, :apartment, foreign_key: true
  end
end
