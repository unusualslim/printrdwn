class AddUserReftoSupportCases < ActiveRecord::Migration[5.2]
  def change
    add_reference :support_cases, :user, foreign_key: true
  end
end
