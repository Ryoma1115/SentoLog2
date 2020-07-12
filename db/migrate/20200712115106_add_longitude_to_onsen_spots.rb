class AddLongitudeToOnsenSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :onsen_spots, :longitude, :float
  end
end
