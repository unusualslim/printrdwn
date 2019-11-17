class CreateSupportCases < ActiveRecord::Migration[5.1]
  def change
    create_table :support_cases do |t|
      t.string :subject
      t.references :location, foreign_key: true
      t.references :user, foreign_key: true
      t.references :status, foreign_key: true
      t.text :description
      t.references :severity, foreign_key: true

      t.timestamps
    end
  end
end
