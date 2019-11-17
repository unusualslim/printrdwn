class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :model
      t.references :manufacturer, foreign_key: true

      t.timestamps
    end
  end
end
