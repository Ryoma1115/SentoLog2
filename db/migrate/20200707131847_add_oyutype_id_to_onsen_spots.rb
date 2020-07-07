class AddOyutypeIdToOnsenSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :onsen_spots, :oyutype_id, :integer
  end
end
