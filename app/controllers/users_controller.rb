class UsersController < ApplicationController

	def edit
		@user = User.find(params[:id])
  	end

  	def update
  		@user = User.find(params[:id])
  		if @user.update(user_params)
  		    redirect_to("/shops")
  		else
  			render("users/edit")
  		end
  	end

  	private

  	def user_params
  		params.require(:user).permit(:userimage, :name, :email)
  	end

end