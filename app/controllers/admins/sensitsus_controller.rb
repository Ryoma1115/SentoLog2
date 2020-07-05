class Admins::SensitsusController < ApplicationController

    def index
        @sensitsu = Sensitsu.new
        @sensitsu = Sensitsu.all
    end

    def create
        @sensitsu = Sensitsu(sensitsu_params)
        if @sensitsu.save
            redirect_to admins_sensitsus_path
        else
            render :edit
        end
    end

    def edit
        @sensitsu = Sensitsu.find(params[:id])
    end

    def update
        @sensitsu = Sensitsu.find(params[:id])
        if @sensitsu.update(sensitsu_params)
            redirect_to admins_sensitsus_path
        else
            render :edit
        end
    end

    def destroy
        sensitsu = Sensitsu.find(params[:id])
        sensitsu.destroy
        redirect_to admins_sensitsus_path
    end

    private
        def sensitsu_params
            params.require(:sensitsu).permit(:name)
        end

end
