class AddUserReferenceToTaskLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :task_lists, :user, foreign_key: true
    add_column :task_lists, :public, :boolean
  end
end
