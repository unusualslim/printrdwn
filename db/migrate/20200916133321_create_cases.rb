class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :subject
      t.text :description
      t.references :location, foreign_key: true
      t.references :status, foreign_key: true
      t.references :severity, foreign_key: true
      t.references :requested_by, foreign_key: {to_table: 'users'}
      t.references :assigned_to, foreign_key: {to_table: 'users'}

      t.timestamps
    end
  end
end
