class Admins::KounousController < ApplicationController

  def index
    @kounou = Kounou.new
    @kounous = Kounou.all
  end

  def create
    kounou = Kounou.new(kounou_params)
    if kounou.save
      redirect_to admins_kounous_path
    else
      render :index
    end
  end

  def edit
    @kounou = Kounou.find(params[:id])
  end

  def update
      kounou = Kounou.find(params[:id])
      if kounou.update(kounou_params)
        redirect_to admins_kounous_path
      else
        render :edit
      end
  end

  def destroy
    kounou = Kounou.find(params[:id])
    kounou.destroy
    redirect_to admins_kounous_path
  end

  private
    def kounou_params
      params.require(:kounou).permit(:name)
    end

end
