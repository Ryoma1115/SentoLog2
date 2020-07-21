class HomesController < ApplicationController
    def top
        @onsen_spots = OnsenSpot.all
        gon.onsen_spots = OnsenSpot.all
    end
end
