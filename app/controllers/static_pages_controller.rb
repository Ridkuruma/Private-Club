class StaticPagesController < ApplicationController
	def home
		@tab_user = User.all

		puts "-"*50
		puts logged_in?
		puts "-"*50
	end
end