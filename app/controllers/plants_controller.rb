class PlantsController < ApplicationController
    
    # GET /plants
    def index
        render json: Plant.all
    end

    # POST /plants
    def create
        new_plant = Plant.create(plant_params)
        render json: new_plant, status: :created
    end

    # GET /plants/:id
    def show
        render json: Plant.find(params[:id])
    end

    private
    def plant_params
        params.permit(:name, :image, :price)
    end
end
