class UsersController < ApplicationController
  
	def new
		@user = User.new
	end
	def create
	    @user = User.new(user_params)
	    if @user.save
		flash[:success] = "Welcome to the Online Shopping website!"
	     redirect_to @user
	    else
	      render 'new'
	    end
  	end
		
	def show
	    @user = User.find(params[:id])
	end


	private

    def user_params
      params.require(:user).permit(:username,  :password,:password_confirmation,:email_id, :address, :phone_no)
    end

  
end
