class CreateSeverities < ActiveRecord::Migration[5.1]
  def change
    create_table :severities do |t|
      t.string :severity
      t.text :description

      t.timestamps
    end
  end
end
