class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    params.inspect
  end

  def create
    @user = User.new(user_params)

    unless (@user.save)
      flash[:alert] =  @user.errors.full_messages.join("<br>")
      redirect_to new_user_url
    end

    flash[:success] = "User successfully created"
    redirect_to @user

  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params[:user][:password] = Digest::MD5.hexdigest params[:user][:password]

    params.require(:user).permit(:username, :email, :password, :address, :telephone)
  end

end
