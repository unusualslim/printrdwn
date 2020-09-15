class AddAssignedToToTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :user_id, :string
    add_reference :tasks, :requested_by, foreign_key: {to_table: 'users'}
    add_reference :tasks, :assigned_to, foreign_key: {to_table: 'users'}
  end
end
