class UsersController < ApplicationController
	before_action :authenticate_user!

	#GET /users/1
	def show
		if(params[:id] != :null)
			@user = User.owner(current_user).find(params[:id])
		else
			redirect_to @home
		end
	end
end
