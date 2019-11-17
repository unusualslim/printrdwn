class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :commenter
      t.references :support_case, foreign_key: true

      t.timestamps
    end
  end
end
