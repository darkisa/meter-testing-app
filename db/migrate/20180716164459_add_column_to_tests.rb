class AddColumnToTests < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :test_name, :string
  end
end
