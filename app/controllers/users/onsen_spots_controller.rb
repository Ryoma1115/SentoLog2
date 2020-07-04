class Users::OnsenSpotsController < ApplicationController
    def index
        @onsen_spots = OnsenSpot.all
    end

    private
        def onsen_spot_params
            params.require(:onsen_spot).permit(
                :sensitsu_id,
                :name,
                :introduction,
                :postal_code,
                :address,
                :phone_number,
                :business_hour,
                :fee,
                :parking,
                :image
            )
        end
end
