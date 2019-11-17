class RemoveRequestedByFromCases < ActiveRecord::Migration[5.2]
  def change
    remove_column :support_cases, :requested_by, :string	
  end
end
