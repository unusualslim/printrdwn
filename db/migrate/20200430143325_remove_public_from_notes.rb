class RemovePublicFromNotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :notes, :public, :boolean
  end
end
