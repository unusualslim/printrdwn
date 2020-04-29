class Location < ApplicationRecord
  has_many :task_lcations
  has_many :tasks, through: :task_locations
  has_many :assets
  has_many :equipment, :through => :assets
end
