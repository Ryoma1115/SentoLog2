class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|

      t.string :user_id
      t.string :onsen_spot_id
      t.string :title
      t.text :comment
      t.float :rate
      t.string :image_id
      t.timestamps
    end
  end
end
