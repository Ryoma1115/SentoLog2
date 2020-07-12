class RemoveOnsenSpotIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :onsen_spot_id, :string
  end
end
