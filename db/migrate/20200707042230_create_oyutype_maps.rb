class CreateOyutypeMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :oyutype_maps do |t|
      t.integer :onsen_spot_id
      t.integer :oyutype_id

      t.timestamps
    end
  end
end
