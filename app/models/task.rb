class Task < ApplicationRecord
  belongs_to :status
  belongs_to :severity
  belongs_to :user
  belongs_to :task_list

  has_many :task_locations
  has_many :locations, through: :task_locations
  
  has_many :comments, dependent: :destroy
 
  has_many_attached :files

end
