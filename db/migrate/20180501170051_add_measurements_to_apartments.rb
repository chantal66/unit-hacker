class AddMeasurementsToApartments < ActiveRecord::Migration[5.1]
  def change
    add_column :apartments, :shaker_doors_qty, :integer, default: 0
    add_column :apartments, :shaker_doors_width, :integer, default: 0
    add_column :apartments, :shaker_doors_height, :integer, default: 0
    add_column :apartments, :shaker_doors_hinges, :integer, default: 0
    add_column :apartments, :shaker_doors_pulls, :integer, default: 0
    add_column :apartments, :slab_drawer_fronts_qty, :integer, default: 0
    add_column :apartments, :slab_drawer_fronts_width, :integer, default: 0
    add_column :apartments, :slab_drawer_fronts_height, :integer, default: 0
    add_column :apartments, :slab_drawer_fronts_knobs, :integer, default: 0
    add_column :apartments, :hardware_hinges, :integer, default: 0
    add_column :apartments, :hardware_pulls, :integer, default: 0
    add_column :apartments, :hardware_knobs, :integer, default: 0
  end
end
