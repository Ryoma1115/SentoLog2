class HomesController < ApplicationController
    def top
        @onsen_spots = OnsenSpot.all
    end
end
