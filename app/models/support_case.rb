class SupportCase < ApplicationRecord
  belongs_to :location
  belongs_to :status
  belongs_to :severity
  belongs_to :user

  
  has_many :comments, dependent: :destroy
end
