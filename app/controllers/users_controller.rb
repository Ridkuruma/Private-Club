class UsersController < ApplicationController

	def new
	end

	def create
		puts "-"*50
		user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
		if user.save
			puts "User created"
			log_in(user)
			redirect_to root_path
		else
			puts "Something went wrong"
		end
	end

	def secret_page
		@tab_users = User.all
	end

end