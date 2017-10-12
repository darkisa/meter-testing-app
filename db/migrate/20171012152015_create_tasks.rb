class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :user_id
      t.string :serial_no
      t.string :account
      t.string :assign_to
      t.text :comments

      t.timestamps
    end
  end
end
