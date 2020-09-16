class AddCaseReferenceToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :case, foreign_key: true
  end
end
