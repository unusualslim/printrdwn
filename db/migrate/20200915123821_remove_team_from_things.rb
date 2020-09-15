class RemoveTeamFromThings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :things, :team, foreign_key: true
  end
end
