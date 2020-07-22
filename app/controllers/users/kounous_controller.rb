class Users::KounousController < ApplicationController
  before_action :authenticate_user!
  def show
    @kounou = Kounou.find(params[:id])
    @kounous = Kounou.all
    @kounou_maps = KounouMap.where(kounou_id: @kounou.id).pluck(:onsen_spot_id)
    @onsen_spots = OnsenSpot.find(@kounou_maps)
  end
end
