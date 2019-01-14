class UsersController < ApplicationController
  # Think about whether your app allows other users to view other users' data
  def show
      if params[:id].to_i == current_user.id
        current_user
      else
        redirect_to users_path
        "Not Authenticated"
      end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_session_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private #Everything under here is a HELPER METHOD for this controller

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
