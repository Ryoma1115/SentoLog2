class Users::ReviewsController < ApplicationController
    def new

    end

    def create
        @onsen_spot = OnsenSpot.find(params[:onsen_spot_id])
        @review = @onsen_spot.reviews.new(review_params)
        @review.user_id = current_user.id
        @review.save
        flash[:success] = "口コミ投稿されました。"
        redirect_to users_onsen_spot_path(@onsen_spot)
    end

    def destroy
        @review = Review.find(params[:onsen_spot_id])
        if @review.user != current_user
            redirect_back(fallback_location: root_url)
        end
        @review.destroy
        redirect_to controller: :onsen_spots, action: :show
    end

    private
    def review_params
        params.require(:review).permit(:title, :comment, :rate, :image)
    end
end
