class ChangeTaskToTasks < ActiveRecord::Migration[5.2]
  def change
    rename_table :task, :tasks
  end
end
