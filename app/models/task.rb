class Task < ApplicationRecord
  belongs_to :task_creator, class_name: 'User', foreign_key: 'assigned_by'
  belongs_to :task_owner, class_name: 'User', foreign_key: 'assigned_to'
end
