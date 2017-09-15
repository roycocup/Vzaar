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
      redirect_to new_user_url, alert: @user.errors.full_messages.join("<br>")
    else
      VzaarMailer.signed_up_email(@user).deliver
      redirect_to @user, notice: 'User was successfully created.'
    end
    
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
