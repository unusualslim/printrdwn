class AddTeamReferenceToTaskLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :task_lists, :team, foreign_key: true
  end
end
