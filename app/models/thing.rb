class Thing < ApplicationRecord
  has_many_attached :files

  validates :files, presence: true

#  belongs_to :team
end
