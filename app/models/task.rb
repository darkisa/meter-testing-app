class Task < ApplicationRecord
  belongs_to :task_creator, class_name: 'User', foreign_key: 'assigned_by'
  belongs_to :task_owner, class_name: 'User', foreign_key: 'assigned_to'

  def set_completed_on(completed)
    if completed == '1' && !self.completed_on
      self.completed_on = Time.current
    elsif completed == '0'
      self.completed_on = nil
    end
  end
end
