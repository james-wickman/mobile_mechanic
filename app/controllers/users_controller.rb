class UsersController < ApplicationController
  def index
  end

  def show
  	@new_vehicle = Vehicle.new
  end
end
