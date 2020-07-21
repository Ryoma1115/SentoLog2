class Users::OyutypesController < ApplicationController
  before_action :authenticate_user!
  def show
    @oyutype = Oyutype.find(params[:id])
    @oyutypes = Oyutype.all
    @oyutype_maps = OyutypeMap.where(oyutype_id: @oyutype.id).pluck(:onsen_spot_id)
    @onsen_spots = OnsenSpot.find(@oyutype_maps)
  end
end
