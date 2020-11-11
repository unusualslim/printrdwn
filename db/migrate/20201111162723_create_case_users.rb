class CreateCaseUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :case_users do |t|
      t.references :case, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
