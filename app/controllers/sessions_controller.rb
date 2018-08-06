class SessionsController < ApplicationController

	def login

	end

	def create
		@email = params[:session][:email]
		user = User.find_by(email: @email.downcase)

		if user && params[:session][:secret_pass] == "password"
			log_in(user)
			redirect_to root_path
  		else
			puts "-"*50
			puts "Something went wrong"
			puts "-"*50
		end
	end

	def destroy
		log_out
		redirect_to root_path
	end

end