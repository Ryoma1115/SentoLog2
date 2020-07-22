class CreateKounouMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :kounou_maps do |t|
      t.integer :onsen_spot_id
      t.integer :kounou_id

      t.timestamps
    end
  end
end
