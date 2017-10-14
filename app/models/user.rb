class User < ApplicationRecord
  has_many :tasks_assigned, class_name: 'Task', foreign_key: 'assigned_by'
  has_many :tasks_received, class_name: 'Task', foreign_key: 'assigned_to'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end

end
