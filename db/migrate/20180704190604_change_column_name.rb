class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :meter_to_protocol_relationships, :type, :meter_type
  end
end
