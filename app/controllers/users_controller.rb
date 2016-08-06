class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    if @user = User.create(user_params)
        redirect_to root_path
    else
        redirect_to new_user_path
    end

    def show
    end
  end


  private def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
