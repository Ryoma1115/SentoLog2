class Users::KounousController < ApplicationController
  def show
    @kounou = Kounou.find(params[:id])
    @kounous = Kounou.all
    @onsen_spots = OnsenSpot.where(kounou_id: @kounou.id)
  end
end
