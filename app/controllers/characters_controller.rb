class CharactersController < ApplicationController
  def new
  end

  def index
    @characters = Character.all
  end

  def show
    @character= Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)

    @character.save
    redirect_to @character
  end

  private
    def character_params
      params.require(:character).permit(:name, :kurzbeschreibung)
    end
end
