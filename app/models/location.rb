class Location < ApplicationRecord
  has_many :task_locations
  has_many :tasks, through: :task_locations
  has_many :assets
  has_many :equipment, :through => :assets
#  belongs_to :team
end
