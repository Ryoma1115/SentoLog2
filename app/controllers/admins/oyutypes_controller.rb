class Admins::OyutypesController < ApplicationController

  def index
    @oyutypes = Oyutype.all
    @oyutype = Oyutype.new
  end

  def create
    oyutype = Oyutype.new(oyutype_params)
    if oyutype.save
      redirect_to admins_oyutypes_path
    else
      render :index
    end
  end

  def edit
    @oyutype = Oyutype.find(params[:id])
  end

  def update
      oyutype = Oyutype.find(params[:id])
      if oyutype.update(oyutype_params)
        redirect_to admins_oyutypes_path
      else 
        render :edit
      end
  end

  def destroy
    oyutype = Oyutype.find(params[:id])
    oyutype.destroy
    reidrect_to admins_oyutypes_path
  end

  private
    def oyutype_params
      params.require(:oyutype).permit(:name)
    end
end
