class RemoveTeamFromNotes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :notes, :team, foreign_key: true
  end
end
