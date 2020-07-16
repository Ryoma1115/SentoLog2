class Users::OnsenSpotsController < ApplicationController
    def index
        @onsen_spots = OnsenSpot.all
    end

    def show
        @onsen_spot = OnsenSpot.find(params[:id])
        @review = Review.new
        @reviews = @onsen_spot.reviews.all
        # @average = @onsen_spot.reviews.rate.average
        
    end

    def new
        @onsen_spot = OnsenSpot.new
    end

    def create
        @onsen_spot = OnsenSpot.new(onsen_spot_params)
        if @onsen_spot.save
            redirect_to users_onsen_spots_path
        else
            render :new
        end
    end

    private
        def onsen_spot_params
            params.require(:onsen_spot).permit(
                :sensitsu_id,
                :kounou_id,
                :oyutype_id,
                :name,
                :introduction,
                :postal_code,
                :prefecture_name,
                :address_city,
                :address_street,
                :address_building,
                :address,
                :phone_number,
                :business_hour,
                :fee,
                :parking,
                :image,
                :latitude,
                :longitude,
                {:sensitsu_ids => []},
                {:kounou_ids => []},
                {:oyutype_ids => []}
            )
        end
end
