class AddNotestoLocation < ActiveRecord::Migration[6.0]
  def change
     add_column :locations, :note, :text 
  end
end
