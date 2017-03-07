class UsersController < ApplicationController
  def index
  end

  def show
  	@user = current_user
  	@new_vehicle = Vehicle.new
  end
end
