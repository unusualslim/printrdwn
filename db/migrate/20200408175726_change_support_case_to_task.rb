class ChangeSupportCaseToTask < ActiveRecord::Migration[5.2]
  def change
    rename_table :support_cases, :tasks
  end
end
