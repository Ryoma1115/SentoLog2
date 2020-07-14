class AddLatitudeToOnsenSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :onsen_spots, :latitude, :float
  end
end
