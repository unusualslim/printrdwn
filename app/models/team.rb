class Team < ApplicationRecord
  has_many :team_members
  has_many :users, through: :team_members
  has_many :roles, through: :team_members
  has_many :notes
  has_many :things
  has_many :task_lists

end
