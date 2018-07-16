class ChangeColumnNameTestResults < ActiveRecord::Migration[5.1]
  def change
    rename_column :test_results, :test_date, :test_start_date
  end
end
