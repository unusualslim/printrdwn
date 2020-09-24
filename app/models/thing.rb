class Thing < ApplicationRecord
  has_many_attached :files

#  whitelist = ['image/png', 'image/jpeg', 'image/gif', 'video/mp4', 'application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'video/x-matroska', 'video/webm' ]


  validates :files, presence: true
#  validates :files, presence: true, blob: { content_type: whitelist}
#  belongs_to :team
end
