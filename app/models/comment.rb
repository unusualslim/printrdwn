class Comment < ApplicationRecord
  belongs_to :support_case
  belongs_to :user
end
