class VehiclesController < ApplicationController
  def create
  	@vehicle = Vehicle.new(vehicle_params)
  	if @vehicle.save
  		redirect_to users_show_path
  	end
  end

  def show
  end

  def update
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.destroy
      redirect_to users_show_path
    end
  end

  private

  def vehicle_params
      params.require(:vehicle).permit(:type, :make, :model, :user_id)
    end
end
