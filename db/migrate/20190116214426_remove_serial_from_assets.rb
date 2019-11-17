class RemoveSerialFromAssets < ActiveRecord::Migration[5.2]
  def change
    remove_column :assets, :serial, :string
  end
end
