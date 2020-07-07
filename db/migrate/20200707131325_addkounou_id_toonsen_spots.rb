class AddkounouIdToonsenSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :onsen_spots, :kounou_id, :integer
  end
end
