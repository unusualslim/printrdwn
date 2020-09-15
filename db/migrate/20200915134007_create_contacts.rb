class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :company
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_number
      t.string :work_number
      t.string :work_fax
      t.string :home_number
      t.text :notes

      t.timestamps
    end
  end
end
