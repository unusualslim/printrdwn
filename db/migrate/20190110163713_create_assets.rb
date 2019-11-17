class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.references :location, foreign_key: true
      t.references :equipment, foreign_key: true
      t.string :serial
      t.text :description

      t.timestamps
    end
  end
end
