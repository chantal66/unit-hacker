class AddColumnsToApartments < ActiveRecord::Migration[5.1]
  def change
    add_column :apartments, :status, :integer, default: 0
    add_column :apartments, :ntv, :datetime
    add_column :apartments, :measure_date, :datetime
    add_column :apartments, :moveout_date, :datetime
    add_column :apartments, :construction_start_date, :datetime
    add_column :apartments, :turnover_date, :datetime
  end
end
