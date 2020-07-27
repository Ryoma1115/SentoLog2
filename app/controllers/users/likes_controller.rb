class Users::LikesController < ApplicationController

    def create
        @onsen_spot =  OnsenSpot.find(params[:onsen_spot_id])
        like = current_user.likes.build(onsen_spot_id: params[:onsen_spot_id])
        like.save
        render "create.js.erb"
        # redirect_to users_onsen_spots_path
    end

    def destroy
        @onsen_spot =  OnsenSpot.find(params[:onsen_spot_id])
        like = Like.find_by(onsen_spot_id: params[:onsen_spot_id], user_id: current_user.id)
        like.destroy
        render "destroy.js.erb"
        # redirect_to users_onsen_spots_path
    end

end
