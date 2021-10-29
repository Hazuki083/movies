class UsersController < ApplicationController
  def edit
  end

  def index
    @user = current_user
    @users = Users.all
  end

  def show
    @user = User.find(params[:id])
  end
end
