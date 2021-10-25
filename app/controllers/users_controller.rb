class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'You have successfully created Lawyer'
    else
      render :new
    end
  end

  protected

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, lawyer_attributes: [:address])
  end
end
