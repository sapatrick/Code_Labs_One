class AdminsController < ApplicationController
  before_action :require_signin

	def index
      @admins = Admin.all
    end

    def show
      @admin = Admin.find(params[:id])
    end

    def edit
	end

	def update
  		if @admin.update(admin_params)
   		 redirect_to @admin, notice: "Account successfully updated!"
 		 else
    		render :edit
  		end
	end

# User can delete their own account
#	def destroy
#  		@user.destroy
#      session[:user_id] = nil
#  		redirect_to root_url, alert: "Account successfully deleted!"
#	end

# Only an Admin can delete user accounts.
  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to root_url, alert: "Account successfully deleted!"
  end
end
