class ChangeCommentsSupportCasesRef < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :support_case_id, :task_id
  end
end
