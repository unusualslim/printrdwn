class AddTeamReferenceToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :team, foreign_key: true
  end
end
