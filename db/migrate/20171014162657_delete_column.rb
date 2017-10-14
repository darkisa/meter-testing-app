class DeleteColumn < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :tasks, :user_id
  end
end
