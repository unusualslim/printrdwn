class Location < ApplicationRecord
  has_many :support_cases
  has_many :assets
  has_many :equipment, :through => :assets
end
