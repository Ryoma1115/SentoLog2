class RemoveUserIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :user_id, :string
  end
end
