class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def show 
		@user = User.find(params[:id])
		
	end

	def create
		@user = User.new(params.require(:user).permit!)
		if @user.save
			flash[:notice] = "Welcome my friend"
			redirect_to @user
		else 
			render :new
				
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to '/'
	end

	private
	def user_params
		params.require(:user).permit!
		
	end
end
