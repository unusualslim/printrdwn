class Location < ApplicationRecord
  has_many :task_locations
  has_many :tasks, through: :task_locations, :dependent => :destroy
  has_many :case_locations
  has_many :cases, through: :case_locations, :dependent => :destroy
  has_many :assets
  has_many :equipment, :through => :assets, :dependent => :destroy
#  belongs_to :team
end
