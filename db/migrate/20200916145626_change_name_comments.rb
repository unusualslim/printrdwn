class ChangeNameComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :case_id 
    rename_table :comments, :task_comments

  end
end
