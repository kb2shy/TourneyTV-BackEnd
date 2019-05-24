class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update]

  def index
    @players = Player.all.sort
    if @players
      render :json => @players, response: :ok
    else
      render :json => {error: "Players not found"}, response: :not_found
    end
  end

  def show
    if @player.valid?
      render :json => @player, response: :ok
    else
      render :json => {error: "Player not found"}, response: :not_found
    end
  end

  def edit
  end

  def update
    if @game.update(player_params)
      redirect_to @player
    else
      render :json => {error: "Cannot update player"}, response: :unprocessable_entity
    end
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:username, :password, :firstname, :lastname, :image, :position, :jersey, :team_id)
  end
end
