class ChangleColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tests, :test_type, :test_type_id
    rename_column :tests, :protocol_name, :protocol_id
  end
end
