class Users::SensitsusController < ApplicationController
    before_action :authenticate_user!
    def show
        @sensitsu = Sensitsu.find(params[:id])
        @sensitsus = Sensitsu.all
        @sensitsu_maps = SensitsuMap.where(sensitsu_id: @sensitsu.id).pluck(:onsen_spot_id)
        @onsen_spots = OnsenSpot.find(@sensitsu_maps)
    end
end
