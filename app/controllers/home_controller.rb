class HomeController < ApplicationController
  def index
  	@user = User.new
  	@mechanic = Mechanic.new

  end

	def unique_user_email
		respond_to do |format|
			guy_with_email = User.where(email: params[:user][:email]).first 
			if guy_with_email
				format.json { render json: {email_unique: false}}
			else
				format.json { render json: {email_unique: true}}
			end
		end
	end

	def unique_mechanic_email
		respond_to do |format|
			guy_with_email = Mechanic.where(email: params[:mechanic][:email]).first 
			if guy_with_email
				format.json { render json: {email_unique: false}}
			else
				format.json { render json: {email_unique: true}}
			end
		end
	end
end