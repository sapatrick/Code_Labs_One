class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:email])
      if admin && admin.authenticate(params[:password])
        session[:admin_id] = admin.id
        flash[:notice] = "Welcome back, #{admin.name}!"
        redirect_to admin
      else
        flash.now[:alert] = "Invalid email/password combination!"
        render :new
      end
  end


  def destroy
    session[:admin_id] = nil
    redirect_to root_url, notice: "You're now signed out!"
  end
end
