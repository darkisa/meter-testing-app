class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, index: true
      t.string 'assigned_by'
      t.string 'assigned_to'
      t.string 'serial_no'
      t.string 'account'
      t.text 'comments'
      t.boolean 'completed'

      t.timestamps
    end
  end
end
