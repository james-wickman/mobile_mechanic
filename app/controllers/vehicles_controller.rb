class VehiclesController < ApplicationController
  def create
  	@vehicle = Vehicle.new(params[:vehicle])
  	if @vehicle.save
  		redirect_to users_show_path
  	end
  end

  def show
  end

  def update
  end
end
