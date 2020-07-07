class CreateSensitsuMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :sensitsu_maps do |t|
      t.integer :sensitsu_id
      t.integer :onsen_spot_id

      t.timestamps
    end
  end
end
