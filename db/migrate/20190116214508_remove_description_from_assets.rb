class RemoveDescriptionFromAssets < ActiveRecord::Migration[5.2]
  def change
    remove_column :assets, :description, :text
  end
end
