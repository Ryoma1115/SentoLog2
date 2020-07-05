class Users::SensitsusController < ApplicationController
    def show
        @sensitsu = Sensitsu.find(params[:id])
        @sensitsus = Sensitsu.all
        @onsen_spots = OnsenSpot.where(sensitsu_id: @sensitsu.id)
    end
end
