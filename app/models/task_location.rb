class TaskLocation < ApplicationRecord
  belongs_to :task
  belongs_to :location
end
