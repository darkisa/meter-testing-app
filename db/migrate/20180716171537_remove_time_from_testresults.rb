class RemoveTimeFromTestresults < ActiveRecord::Migration[5.1]
  def change
    remove_column :test_results, :start_time
    remove_column :test_results, :end_time
  end
end
