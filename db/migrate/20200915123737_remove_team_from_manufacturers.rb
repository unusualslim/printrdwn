class RemoveTeamFromManufacturers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :manufacturers, :team, foreign_key: true
  end
end
