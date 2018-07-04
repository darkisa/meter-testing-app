class ChangeColumnNameMetersTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :meters, :type, :meter_type
  end
end
