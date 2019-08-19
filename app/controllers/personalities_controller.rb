class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personality = Personality.find(params[:id])
    @choice = @personality.choices.where(user: current_user).first_or_initialize
  end

  def search
    @name = params[:name]
    personality = Personality.search(@name).first
    return redirect_to personality unless personality.nil?
    from_wiki = Mediawiki.search(@name)
    unless from_wiki.nil?
      personality = Personality.create  name: from_wiki[:title],
                                        wikipedia_url: from_wiki[:fullurl],
                                        photo: from_wiki[:thumbnail],
                                        description: from_wiki[:extract]
      return redirect_to personality
    end
    redirect_to personalities_path, notice: "Pas de personnalité nommée \"#{@name}\""
  end

  def create
    @personality = Personality.new
    @personality.save
    redirect_to @personality
  end

  def destroy
    @personality = Personality.find(params[:id])
    @personality.destroy
    redirect_to personalities_path
  end
end
