class VehiclesController < ApplicationController
  def index
  	@vehicles = Vehicle.all
  end

  def show
  	@vehicle = Vehicle.find(params[:id])
  end

  def edit
  	@vehicle = Vehicle.find(params[:id])
  end

  def update
  	@vehicle = Vehicle.find(params[:id])
    if @vehicle.update(vehicle_params)
    redirect_to @vehicle, notice: "Vehicle successfully updated!"
  else
    render :edit
  end
  end

  def new
  	@vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
    redirect_to @vehicle, notice: "Vehicle successfully added!"
    else
      render :new
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_url, alert: "Vehicle successfully deleted!"
  end

private
    def vehicle_params
    	params.require(:vehicle).permit(:year, :make, :model, :variety, :condition, :mileage, :count, :price, :description, :image_file_name)
    end
end
