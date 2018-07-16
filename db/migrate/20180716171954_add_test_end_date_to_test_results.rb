class AddTestEndDateToTestResults < ActiveRecord::Migration[5.1]
  def change
    add_column :test_results, :test_end_date, :date
  end
end
