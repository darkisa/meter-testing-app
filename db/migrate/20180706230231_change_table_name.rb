class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :meter_protocol_relationships, :tests
  end
end
