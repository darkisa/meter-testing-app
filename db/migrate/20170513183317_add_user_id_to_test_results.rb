class AddUserIdToTestResults < ActiveRecord::Migration[5.1]
  def change
    add_column :test_results, :user_id, :integer
  end
end
