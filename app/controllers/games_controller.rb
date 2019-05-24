class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]

  def index
    @games = Game.all.sort
    if @games
      render :json => @games, response: :ok
    else
      render :json => {error: "Games not found"}, response: :not_found
    end
  end

  def show
    if @game.valid?
      render :json => @game, response: :ok
    else
      render :json => { error: "Game not found" }, response: :not_found
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to @game
    else
      render :json => { error: "Cannot update game scores" }, response: :unprocessable_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:team1score, :team2score, :courtnum)
  end

end
