class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :profile, :update ]

  before_action :set_user, only: %i[ show edit update]

  def home
  end

  def show
  end 

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
     redirect_to profile_path
    else
     render "new"
    end
  end
end

private

def set_user
  @user = User.find(params[:id])
end 

def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password)
end