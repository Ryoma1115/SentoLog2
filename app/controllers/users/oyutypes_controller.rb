class Users::OyutypesController < ApplicationController
  def show
    @oyutype = Oyutype.find(params[:id])
    @oyutypes = Oyutype.all
    @onsen_spots = OnsenSpot.where(oyutype_id: @oyutype.id)
  end
end
