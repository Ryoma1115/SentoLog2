class AddOnsenSpotIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :onsen_spot_id, :integer
  end
end
