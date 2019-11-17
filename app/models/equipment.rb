class Equipment < ApplicationRecord
  belongs_to :manufacturer
  has_many :assets
  has_many :equipment,:through => :assets
end
