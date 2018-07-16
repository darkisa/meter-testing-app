class RemoveTestNameFromTestResults < ActiveRecord::Migration[5.1]
  def change
    remove_column :test_results, :test_name
  end
end
