class Users::ReviewsController < ApplicationController
    def new

    end

    def create
        @onsen_spot = OnsenSpot.find(params[:onsen_spot_id])
        @review = @onsen_spot.reviews.new(review_params)
        @review.user_id = current_user.id
        if @review.save
            flash[:success] = "口コミ投稿されました。"
            redirect_to users_onsen_spot_path(@onsen_spot)
        else
            @reviews = Reviews.where(onsen_spot_id: @onsen_spot.id)
            render '/onsen_spots/show'
        end
    end

    def destroy

    end

    private
    def review_params
        params.require(:review).permit(:title, :comment)
    end
end
