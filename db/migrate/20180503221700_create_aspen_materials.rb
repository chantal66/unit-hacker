class CreateAspenMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :aspen_materials do |t|
      t.integer :qty
      t.integer :rec
      t.string :item
    end
  end
end
