class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(email: params[:session][:email].downcase)
		if @user && @user.authenticate(params[:session][:password])
			log_in @user
			redirect_to root_url
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
	end

	private

		def log_in user
			session[:user_id] = user.id
		end

end
