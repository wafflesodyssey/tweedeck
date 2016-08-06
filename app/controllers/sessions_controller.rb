class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Cheers"
    else
      redirect_to root_path, notice: "You failed"
    end
  end

  def delete
    
  end
end
