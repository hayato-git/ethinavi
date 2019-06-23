class UsersController < ApplicationController

  before_action :correct_user, only: [:edit, :update]

	  def edit
		  # @user = User.find(params[:id])
    end

    def update
  	  # @user = User.find(params[:id])
  	  if @user.update(user_params)
  	    redirect_to("/shops")
  	  else
  	    render("users/edit")
  	  end
    end

  private

  	def user_params
  		params.require(:user).permit(:userimage,
                                   :name,
                                   :email
                                  )
  	end

    # 正しいユーザーどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to("/shops") unless @user == current_user
    end

end