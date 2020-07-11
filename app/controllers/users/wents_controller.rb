class Users::WentsController < ApplicationController

    def create
        went = current_user.wents.build(onsen_spot_id: params[:onsen_spot_id])
        went.save
    end

    def destroy
        went = Went.find_by(onsen_spot_id: params[:onsen_spot_id], user_id: current_user.id)
        went.destroy
    end

end
