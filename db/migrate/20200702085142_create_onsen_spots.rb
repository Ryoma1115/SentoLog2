class CreateOnsenSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :onsen_spots do |t|

      t.integer :sensitsu_id
      t.string :name
      t.text :introduction
      t.string :postal_code
      t.string :address
      t.string :phone_number
      t.string :business_hour
      t.integer :fee
      t.text :parking
      t.string :image_id
      t.timestamps
    end
  end
end
