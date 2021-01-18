class Case < ApplicationRecord
  belongs_to :status
  belongs_to :severity
  belongs_to :requested_by, :class_name => 'User'
  belongs_to :assigned_to, :class_name => 'User'
 
  has_many :case_locations
  has_many :locations, through: :case_locations, dependent: :destroy

  has_many :case_comments, :dependent => :destroy

  has_many_attached :files, :dependent => :destroy

  has_many :case_users, :dependent => :destroy
  has_many :users, through: :case_users

end
