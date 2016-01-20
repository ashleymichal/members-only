class SessionsController < ApplicationController

	def new
	end

	def create
		if User.find_by_email(params[:session][:email])
			redirect_to 'root'
		else
			render :new
		end
	end

	def destroy
	end

end
