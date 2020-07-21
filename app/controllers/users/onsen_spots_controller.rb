class Users::OnsenSpotsController < ApplicationController

    before_action :authenticate_user!


    def index
        @onsen_spot_all = OnsenSpot.all
        @onsen_spots = OnsenSpot.all.page(params[:page]).per(10)
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

    # 都道府県検索
    def prefecture_search
        @onsen_spots = OnsenSpot.prefecture_search(params[:prefecture_search])
        @prefecture_search = params[:prefecture_search]
        @prefecture = JpPrefecture::Prefecture.find(code: @prefecture_search)
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
                :prefecture_code,
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
