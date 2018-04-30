class AddColumnsToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :address, :string
    add_column :properties, :number_of_units, :integer
    add_column :properties, :property_manager_name, :string
    add_column :properties, :property_manager_phone, :integer
    add_column :properties, :property_manager_email, :string
    add_column :properties, :state, :string
    add_column :properties, :zipcode, :integer
    add_column :properties, :spec_a, :string
    add_column :properties, :spec_b, :string
    add_column :properties, :spec_c, :string
    add_column :properties, :suburban, :string
    add_column :properties, :urban, :string
  end
end
