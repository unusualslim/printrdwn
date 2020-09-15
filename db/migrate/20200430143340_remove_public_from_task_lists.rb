class RemovePublicFromTaskLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :task_lists, :public, :boolean
  end
end
