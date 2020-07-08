class CreateOyutypes < ActiveRecord::Migration[5.2]
  def change
    create_table :oyutypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
