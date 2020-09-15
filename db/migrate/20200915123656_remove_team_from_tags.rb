class RemoveTeamFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_reference :tags, :team, foreign_key: true
  end
end
