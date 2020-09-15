class RemoveTeamFromLocations < ActiveRecord::Migration[5.2]
  def change
    remove_reference :locations, :team, foreign_key: true
  end
end
