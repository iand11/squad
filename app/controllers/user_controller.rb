class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to "/users/#{@user.id}"
    else
      @user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  def profile
    @user = User.find(params[:id])
  end

  private

  def user_params
     params.require(:user).permit(:name, :email)
  end
end
