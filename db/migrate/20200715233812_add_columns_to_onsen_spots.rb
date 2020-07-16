class AddColumnsToOnsenSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :onsen_spots, :prefecture_code, :integer
    add_column :onsen_spots, :address_city, :string
    add_column :onsen_spots, :address_street, :string
    add_column :onsen_spots, :address_building, :string
  end
end
