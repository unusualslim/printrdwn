class ChangeNotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :notes, :user, foreign_key: true
    add_column :notes, :public, :boolean
  end
end
