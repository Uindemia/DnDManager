class StatsController < ApplicationController

  def create
    @character = Character.find(params[:character_id])
    @stat = @character.stats.create(stat_params)
    redirect_to character_path(@character)
  end

  def edit
    @character = Character.find(params[:character_id])
    @stat = Stat.find(params[:id])
  end

  def update
    @character = Character.find(params[:character_id])
    @stat = @character.stats.find(params[:id])

    if @stat.update(stat_params)
      redirect_to @character.stat
    else
      render 'edit'
    end
  end


  private
  def stat_params
    params.require(:stat).permit(:strength, :agility, :stamina)
  end

end
