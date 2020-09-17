class TaskList < ApplicationRecord
  has_many :tasks, dependent: :destroy
#  belongs_to :team
end
