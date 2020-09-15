class AddAddressToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :address1, :string
    add_column :locations, :address2, :string
    add_column :locations, :city, :string
    add_column :locations, :state, :string
    add_column :locations, :zip, :string
  end
end
