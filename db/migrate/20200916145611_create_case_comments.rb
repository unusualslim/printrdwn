class CreateCaseComments < ActiveRecord::Migration[5.2]
  def change
    create_table :case_comments do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
