class VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:show. :update, :destroy]
skip_before_action :authenticate, only:[:index, :show]

    def index
        @vehicles = Vehicle.all
        render json: @vehicles
    end
    
    def show
        render json: @vehicles
    end
    
    def create
        @vehicle = Vehicle.new(vehicle_params)
        if @vehicle.save
            render json: @vehicle, status: created
        else
            render json: @vehicle.errors, status: :unprocessable_entity
        end
    end

    def update
        if @vehicle.update(book_params)
            render json: @vehicle
        else
            render json: @vehicle.errors, status: :unprocessable_entity
    end

    def destroy
        @vehicle.destroy
    end

    private
    def set_vehicle
        vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
        params.require(:vehicle).permit(:color, :year, :make, :model)
    end
end
