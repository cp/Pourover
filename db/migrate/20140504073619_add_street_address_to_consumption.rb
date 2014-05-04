class AddStreetAddressToConsumption < ActiveRecord::Migration
  def change
    add_column :consumptions, :street_address, :string
  end
end
