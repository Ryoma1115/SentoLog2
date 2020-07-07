class Admins::KounousController < ApplicationController

  def index
    @kounou = Kounou.new
    @kounous = Kounou.all
  end

  def create
    kounou = Kounou.new(kounou_params)
    if kounou.save
      redirect_to 
    else
      render :index
    end
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private
    def kounou_params
      params.require(:kounou).permit(:name)
    end

end
