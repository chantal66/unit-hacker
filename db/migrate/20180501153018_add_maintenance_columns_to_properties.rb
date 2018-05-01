class AddMaintenanceColumnsToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :maintenance_manager_name, :string
    add_column :properties, :maintenance_manager_phone, :integer
    add_column :properties, :maintenance_manager_email, :string
  end
end
