class ChoicesController < ApplicationController
  def create
    @choice = Choice.create choice_params
    redirect_to @choice.personality
  end

  def update
    @choice = Choice.find params[:id]
    @choice.update choice_params
    redirect_to @choice.personality
  end

  def destroy
    @choice = Choice.find params[:id]
    @personality = @choice.personality
    @choice.destroy
    redirect_to @personality
  end

  protected

  def choice_params
    params.require(:choice).permit(:user_id, :personality_id, :description)
  end
end