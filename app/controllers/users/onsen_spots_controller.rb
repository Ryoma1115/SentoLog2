class Users::OnsenSpotsController < ApplicationController
    def index
        @onsen_spots = OnsenSpot.all
    end
end
