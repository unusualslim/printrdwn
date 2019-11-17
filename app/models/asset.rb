class Asset < ApplicationRecord
  belongs_to :location
  belongs_to :equipment

  has_many :taggings
  has_many :tags, through: :taggings

end
