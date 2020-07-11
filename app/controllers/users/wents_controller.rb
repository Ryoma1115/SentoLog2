class Users::WentsController < ApplicationController

    def create
        @onsen_spot =  OnsenSpot.find(params[:onsen_spot_id])
        went = current_user.wents.build(onsen_spot_id: params[:onsen_spot_id])
        went.save
    end

    def destroy
        @onsen_spot =  OnsenSpot.find(params[:onsen_spot_id])
        went = Went.find_by(onsen_spot_id: params[:onsen_spot_id], user_id: current_user.id)
        went.destroy
    end

end
