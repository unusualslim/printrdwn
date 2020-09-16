class CaseLocation < ApplicationRecord
  belongs_to :case
  belongs_to :location
end
