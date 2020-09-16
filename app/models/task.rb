class Task < ApplicationRecord
  belongs_to :status
  belongs_to :severity
  belongs_to :requested_by, :class_name => 'User'
  belongs_to :assigned_to, :class_name => 'User'
  belongs_to :task_list

  has_many :task_locations
  has_many :locations, through: :task_locations
  
  has_many :task_comments, dependent: :destroy
 
  has_many_attached :files

end
