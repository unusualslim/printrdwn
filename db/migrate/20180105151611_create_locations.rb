class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :short_name
      t.string :name

      t.timestamps
    end
  end
end
