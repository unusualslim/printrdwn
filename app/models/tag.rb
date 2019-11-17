class Tag < ApplicationRecord
  has_many :taggings
  has_many :assets, through: :taggings
end
