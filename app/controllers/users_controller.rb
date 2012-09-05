class SessionsController < ApplicationController
  
  def login
    @user = User.new
  end
  
  def sign_in
    if @user = User.find_by_name(params[:user][:name]).try(:authenticate, params[:user][:password])
      redirect_to channels_url
    else
      @user = User.new(params[:user])
      render :action => :login
    end
  end
  
  def log_out
    redirect_to login_path
  end 
end
