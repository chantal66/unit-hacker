class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
      t.integer :unit_number
      t.integer :beds
      t.integer :baths
      t.string :unit_location
      t.boolean :garage
      t.integer :garage_number
      t.string :renovation_type
      t.string :floor_plan

      t.timestamps
    end
  end
end
