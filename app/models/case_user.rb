class CaseUser < ApplicationRecord
  belongs_to :case
  belongs_to :user
end
