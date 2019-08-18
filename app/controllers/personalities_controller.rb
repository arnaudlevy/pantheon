class PersonalitiesController < ApplicationController
  def index
    @personalities = Personality.all
  end

  def show
    @personality = Personality.find(params[:id])
  end

  def search
    @term = params[:term]
    # TODO search in personalities
    render json: {
      term: @term,
      personalities: Personality.search(@term).map { |personality| 
        {
          id: personality.id,
          name: personality.to_s,
          photo: personality.photo
        }
      },
      mediawiki: Mediawiki.search(@term)
    }
  end

  def create
    @personality = Personality.new
    @personality.save
    redirect_to @personality
  end
end
