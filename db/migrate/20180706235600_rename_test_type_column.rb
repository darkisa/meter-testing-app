class RenameTestTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :test_types, :test_type, :name
  end
end
