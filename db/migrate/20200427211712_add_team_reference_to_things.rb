class AddTeamReferenceToThings < ActiveRecord::Migration[5.2]
  def change
    add_reference :things, :team, foreign_key: true
  end
end
