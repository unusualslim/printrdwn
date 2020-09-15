class RemoveTeamFromTaskLists < ActiveRecord::Migration[5.2]
  def change
    remove_reference :task_lists, :team, foreign_key: true
  end
end
