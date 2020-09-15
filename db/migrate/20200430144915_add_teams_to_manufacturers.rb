class AddTeamsToManufacturers < ActiveRecord::Migration[5.2]
  def change
    add_reference :manufacturers, :team, foreign_key: true
  end
end
