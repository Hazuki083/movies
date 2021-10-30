class UsersController < ApplicationController

  def new
    @movie = Movie.new
  end

  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end
end


private

 def user_params
   params.reqire(:user).permit(:name, :introduction, :profile_image)
 end