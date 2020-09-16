class CreateCaseLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :case_locations do |t|
      t.references :case, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
