class AddTeamsToTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :tags, :team, foreign_key: true
  end
end
