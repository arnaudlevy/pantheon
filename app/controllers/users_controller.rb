class UsersController < ApplicationController
  before_action :authenticate_user!, only: :update_me

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def me
    if user_signed_in?
      render :me_registered
    else
      render :me_unregistered
    end
  end

  def update_me
  end
end
