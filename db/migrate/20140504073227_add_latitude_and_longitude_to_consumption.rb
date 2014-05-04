class AddLatitudeAndLongitudeToConsumption < ActiveRecord::Migration
  def change
    add_column :consumptions, :latitude, :float
    add_column :consumptions, :longitude, :float
  end
end
