class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:update_me, :choose_personality]
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def me
  end
end
