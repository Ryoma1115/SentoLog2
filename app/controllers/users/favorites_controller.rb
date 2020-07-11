class Users::FavoritesController < ApplicationController

    def create
        @review = Review.find(params[:review_id])
        favorite = current_user.favorites.build(review_id: params[:review_id])
        favorite.save
    end

    def destroy
        @review = Review.find(params[:review_id])
        favorite = Favorite.find_by(review_id: params[:review_id])
        favorite.destroy
    end

end
