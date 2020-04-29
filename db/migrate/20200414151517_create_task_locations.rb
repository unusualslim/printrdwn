class CreateTaskLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :task_locations do |t|
      t.references :task, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
