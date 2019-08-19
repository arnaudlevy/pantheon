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
    if user_signed_in?
      @personalities = current_user.personalities
      render :me_registered
    else
      render :me_unregistered
    end
  end

  def choose_personality
    @wikipedia_url = params[:wikipedia_url]
    @personality = Personality.where(wikipedia_url: @wikipedia_url).first_or_initialize
    if @personality.new_record?
      # TODO create from wikipedia
      @personality.save
    end
    Choice.create user: current_user, personality: @personality
  end

  def update_me
  end
end
